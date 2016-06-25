class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email
      t.text :username
      t.text :profile_image_url
      t.text :token
      t.string :area_id

      t.timestamps null: false
    end
  end
end
