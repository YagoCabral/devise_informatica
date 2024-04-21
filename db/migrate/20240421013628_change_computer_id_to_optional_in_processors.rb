class ChangeComputerIdToOptionalInProcessors < ActiveRecord::Migration[7.1]
  def change
    change_column :processors, :computer_id, :integer, null: true
  end
end
