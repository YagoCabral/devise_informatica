class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.boolean :valid
      t.references :customer, null: false, foreign_key: true
      t.references :computer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
