class CreateProgramsteps < ActiveRecord::Migration[5.0]
  def change
    create_table :programsteps do |t|
      t.time :start_time
      t.time :end_time
      t.text :description
      t.references :workshop, foreign_key: true

      t.timestamps
    end
  end
end
