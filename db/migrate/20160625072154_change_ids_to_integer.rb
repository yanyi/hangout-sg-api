class ChangeIdsToInteger < ActiveRecord::Migration
  def change
    change_column :events, :location_id, :integer
    change_column :events, :activity_id, :integer
    change_column :events, :user_id, :integer

    change_column :locations, :area_id, :integer

    change_column :users, :area_id, :integer
  end
end
