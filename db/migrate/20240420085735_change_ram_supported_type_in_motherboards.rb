class ChangeRamSupportedTypeInMotherboards < ActiveRecord::Migration[7.1]
  def change
    change_column :motherboards, :ram_supported, :integer
  end
end
