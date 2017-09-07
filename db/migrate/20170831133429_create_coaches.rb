class CreateCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :role
      t.text :intro
      t.boolean :active

      t.timestamps
    end
  end
end
