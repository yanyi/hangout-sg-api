class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :name
      t.text :lat
      t.text :lng
      t.text :location_image_url
      t.string :area_id
      t.string :activity_id

      t.timestamps null: false
    end
  end
end
