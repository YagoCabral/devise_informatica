class Processor < ApplicationRecord
  belongs_to :computer, optional: true
end
