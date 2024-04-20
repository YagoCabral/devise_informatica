class CreateVideoCards < ActiveRecord::Migration[7.1]
  def change
    create_table :video_cards do |t|
      t.string :name
      t.references :computer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
