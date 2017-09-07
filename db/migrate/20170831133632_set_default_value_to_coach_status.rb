class SetDefaultValueToCoachStatus < ActiveRecord::Migration[5.0]
  def change
  	change_column :coaches, :active, :boolean, :default => true
  end
end
