class AddPhotoToCoaches < ActiveRecord::Migration[5.0]
  def change
    add_column :coaches, :photo, :string
  end
end
