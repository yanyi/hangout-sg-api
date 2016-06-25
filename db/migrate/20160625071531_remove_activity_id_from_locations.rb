class RemoveActivityIdFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :activity_id
  end
end
