class CreateMotherboards < ActiveRecord::Migration[7.1]
  def change
    create_table :motherboards do |t|
      t.string :name
      t.string :processor_supported
      t.string :ram_supported
      t.integer :slot
      t.boolean :integrated_video
      t.references :computer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
