class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.references :workshop, foreign_key: true
      t.datetime :date
      t.integer :available

      t.timestamps
    end
  end
end
