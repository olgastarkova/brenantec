class CreateWorkshops < ActiveRecord::Migration[5.0]
  def change
    create_table :workshops do |t|
      t.string :title
      t.text :description
      t.integer :capacity
      t.integer :price
      t.string :photo
      t.references :coach, foreign_key: true

      t.timestamps
    end
  end
end
