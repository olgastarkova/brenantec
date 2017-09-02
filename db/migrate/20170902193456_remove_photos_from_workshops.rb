class RemovePhotosFromWorkshops < ActiveRecord::Migration[5.0]
  def change
  	remove_column :workshops, :photo
  end
end
