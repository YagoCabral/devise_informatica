class Ram < ApplicationRecord
  belongs_to :computer, optional: true

  def self.total_size(computer_id)
    ram_records = Ram.where(computer_id: computer_id)
    total_ram_size = ram_records.sum(:size)
    puts "RAM records for computer #{computer_id}: #{ram_records.inspect}"
    puts "Total RAM size for computer #{computer_id}: #{total_ram_size}"
    total_ram_size
  end  
end
