class CreateRams < ActiveRecord::Migration[7.1]
  def change
    create_table :rams do |t|
      t.string :name
      t.string :size
      t.references :computer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
