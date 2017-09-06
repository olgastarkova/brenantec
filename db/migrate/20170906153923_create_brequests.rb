class CreateBrequests < ActiveRecord::Migration[5.0]
  def change
    create_table :brequests do |t|
      t.string :name
      t.string :email
      t.string :checkin
      t.string :date
      t.date :checkout
      t.text :message

      t.timestamps
    end
  end
end
