class Computer < ApplicationRecord
  has_one :processor
  has_one :motherboard
  has_one :video_card
  has_many :rams
  has_many :orders

  validate :validate_single_processor
  validate :validate_single_motherboard
  validate :validate_processor_and_motherboard_compatibility
  validate :validate_has_rams
  validate :validate_ram_slots
  validate :validate_storage_size
  validate :validate_video_card_presence
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

  def validate_has_rams
    errors.add(:rams, "A máquina deve ter pelo menos uma memória RAM") unless rams.present?
  end
  
  def validate_ram_slots
    if motherboard && rams.size > motherboard.slot
      errors.add(:rams, "Total de memórias RAM excede o número de slots da placa mãe")
    end
  end
  
  def validate_storage_size
    total_ram_size = rams.inject(0) { |sum, ram| sum + ram.size }
    if motherboard && total_ram_size > motherboard.ram_supported
      errors.add(:rams, "Total de armazenamento excede a memória RAM suportada pela placa mãe")
    end
  end

  def validate_video_card_presence
    if video_card.present?
      errors.add(:video_card, "Apenas uma placa de vídeo pode ser selecionada")
    end
  end

  def video_card_required_if_no_integrated_video
    if motherboard && !motherboard.integrated_video && video_card.nil?
      errors.add(:base, "Se a placa mãe não possui vídeo integrado, é obrigatório selecionar uma placa de vídeo.")
    end
  end
end
