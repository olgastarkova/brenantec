class AddColumnToWorkshops < ActiveRecord::Migration[5.0]
  def change
  	add_column :workshops, :type, :string, null: false
  end
end
