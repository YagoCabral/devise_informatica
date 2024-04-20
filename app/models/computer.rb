class Computer < ApplicationRecord
  has_one :processor
  has_one :motherboard
  has_one :video_card
  has_one :ram
  has_many :orders
  has_many :customer, through: :orders
end
