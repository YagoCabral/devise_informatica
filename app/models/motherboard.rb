class Motherboard < ApplicationRecord
  belongs_to :computer, optional: true

  validates :name, inclusion: { in: ["Asus ROG", "Gigabyte Aorus", "ASRock Steel Legend"], message: "Aqui na Devise Informática não trabalhamos com essa Placa-mãe" }
  validates :processor_supported, inclusion: { in: ["Intel", "AMD", ["Intel", "AMD"]], message: "Aqui na Devise Informática não trabalhamos com essa marca" }
  validates :ram_supported, inclusion: { in: [16, 64], message: "Aqui na Devise Informática não trabalhamos com essa quantidade de RAM" }
  validates :slot, inclusion: { in: [2, 4], message: "Aqui na Devise Informática não trabalhamos com essa quantidade de slots" }
end
