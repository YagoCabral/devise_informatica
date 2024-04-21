class ChangeComputerIdToOptionalInMultipleTables < ActiveRecord::Migration[7.1]
  def change
    change_column :rams, :computer_id, :integer, null: true
    change_column :video_cards, :computer_id, :integer, null: true
    change_column :motherboards, :computer_id, :integer, null: true
  end
end
