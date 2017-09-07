class RenameColumnInWorkshops < ActiveRecord::Migration[5.0]
  def change
  	rename_column :workshops, :type, :format
  end
end
