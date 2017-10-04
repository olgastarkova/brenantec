class AddSubjectToBrequests < ActiveRecord::Migration[5.0]
  def change
    add_column :brequests, :subject, :string
  end
end
