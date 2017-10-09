class ChangeTypeBrequests < ActiveRecord::Migration[5.0]
  def change
  	change_column :brequests, :checkout, :string
  end
end
