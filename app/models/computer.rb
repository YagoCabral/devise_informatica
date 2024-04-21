class Computer < ApplicationRecord
  has_one :processor
  has_one :motherboard
  has_one :video_card
  has_many :rams
  has_many :orders

  validate :validate_single_processor
  validate :validate_single_motherboard
  validate :validate_processor_and_motherboard_compatibility
  validate :validate_has_ram
  validate :validate_total_ram_within_motherboard_slots
  validate :validate_ram_capacity
  validate :only_one_video_card
  validate :video_card_required_if_no_integrated_video

  def validate_single_processor
    if processor.present? && processor.changed?
      errors.add(:processor, "Você só pode selecionar um processador por máquina") if Processor.where(computer_id: id).exists?
    end
  end

  def validate_single_motherboard
    if motherboard.present? && motherboard.changed?
      errors.add(:motherboard, "Você só pode selecionar uma placa mãe por máquina") if Motherboard.where(computer_id: id).exists?
    end
  end
  
  def validate_processor_and_motherboard_compatibility
    return unless processor.present? && motherboard.present?

    unless motherboard.processor_supported.include?(processor.brand)
      errors.add(:processor, "A placa mãe selecionada não suporta processadores da marca #{processor.brand}")
    end
  end

  def validate_has_ram
    errors.add(:ram, "A máquina deve ter pelo menos uma memória RAM") unless ram.present?
  end

  def validate_total_ram_within_motherboard_slots
    return unless motherboard

    total_ram_selected = motherboard.rams.sum(:size)
    if total_ram_selected > motherboard.slot
      errors.add(:base, "A quantidade total de memórias RAM selecionadas não pode exceder o número de slots de memória da placa mãe")
    end
  end

  def validate_ram_capacity
    return unless motherboard

    total_ram_capacity = Ram.total_size(id)
    max_ram_supported = motherboard.ram_supported

    if total_ram_capacity > max_ram_supported
      errors.add(:base, "A capacidade total de RAM não pode exceder #{max_ram_supported} GB")
    end
  end

  def only_one_video_card
    if video_cards.size > 1
      errors.add(:base, "Apenas uma placa de vídeo pode ser selecionada para o computador")
    end
  end

  def video_card_required_if_no_integrated_video
    if motherboard && !motherboard.integrated_video && video_cards.empty?
      errors.add(:base, "Se a placa mãe não possui vídeo integrado, é obrigatório selecionar uma placa de vídeo.")
    end
  end
end
