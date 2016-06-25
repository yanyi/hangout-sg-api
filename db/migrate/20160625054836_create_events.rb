class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :title
      t.text :description
      t.text :date_time
      t.string :location_id
      t.string :activity_id
      t.string :user_id

      t.timestamps null: false
    end
  end
end
