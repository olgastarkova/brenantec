class AddPhotosToWorkshops < ActiveRecord::Migration[5.0]
  def change
  	add_column :workshops, :photos, :string
  end
end
