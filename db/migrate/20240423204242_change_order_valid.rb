class ChangeOrderValid < ActiveRecord::Migration[7.1]
  def change
    rename_column :orders, :valid, :order_valid
  end
end
