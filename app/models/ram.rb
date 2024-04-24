class Ram < ApplicationRecord
  belongs_to :computer, optional: true

  validates :name, inclusion: { in: ["Kingston Hiper X"], message: "Aqui na Devise Informática não trabalhamos com essa marca de RAM" }
  validates :size, inclusion: { in: [4, 8, 16, 32, 64], message: "Aqui na Devise Informática não trabalhamos com esse tamanho de RAM" }
end
