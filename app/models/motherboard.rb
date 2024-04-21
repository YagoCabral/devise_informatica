class Motherboard < ApplicationRecord
  belongs_to :computer, optional: true
end
