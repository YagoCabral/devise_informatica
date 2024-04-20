class Customer < ApplicationRecord
  has_many :orders
  has_many :computer, through: :orders
end
