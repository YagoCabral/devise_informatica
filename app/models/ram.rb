class Ram < ApplicationRecord
  belongs_to :computer, optional: true

  def self.total_size(computer_id)
    Ram.where(computer_id: computer_id).sum(:size)
  end
end
