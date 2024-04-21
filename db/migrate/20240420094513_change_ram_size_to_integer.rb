class ChangeRamSizeToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :rams, :size, :integer
  end
end
