class AddStepsToWorkshops < ActiveRecord::Migration[5.0]
  def change
	add_column :workshops, :program, :json, null: true, default: '{}'
  end
end
