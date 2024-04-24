class Processor < ApplicationRecord
  belongs_to :computer, optional: true

  validates :name, inclusion: { in: ["Core i5", "Core i7", "Ryzen 5", "Ryzen 7"], message: "Aqui na Devise Informática não trabalhamos com este modelo de processador" }
  validates :brand, inclusion: { in: ["Intel", "AMD"], message: "Aqui na Devise Informática não trabalhamos com esta marca de processador" }
end
