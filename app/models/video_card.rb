class VideoCard < ApplicationRecord
  belongs_to :computer, optional: true

  validates :name, inclusion: { in: ["Evga Geforce RTX 2060", "Asus ROG Strix Geforce RTX 3060", "Gigabyte Radeon RX 6600 XT EAGLE"], message: "Aqui na Devise Informática não trabalhamos com essa Placa de vídeo" }
end
