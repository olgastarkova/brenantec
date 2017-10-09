class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :message
      t.integer :nb_guests
      t.date :date
      t.date :checkin
      t.date :checkout

      t.timestamps
    end
  end
end
