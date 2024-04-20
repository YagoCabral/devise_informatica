class CreateProcessors < ActiveRecord::Migration[7.1]
  def change
    create_table :processors do |t|
      t.string :name
      t.string :brand
      t.references :computer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
