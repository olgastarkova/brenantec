class AddNbGuestsToBrequests < ActiveRecord::Migration[5.0]
  def change
  	add_column :brequests, :nb_guests, :integer, null: true
  end
end
