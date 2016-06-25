# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create areas
Area.create(:name => "Ang Mo Kio")
Area.create(:name => "Choa Chu Kang")
Area.create(:name => "Jurong East")
Area.create(:name => "Pasir Ris")
Area.create(:name => "Sengkang")
Area.create(:name => "Serangoon")
Area.create(:name => "Tampines")
Area.create(:name => "Tiong Bahru")
Area.create(:name => "Toa Payoh")

# Create activities
Activity.create(:name => "Badminton")
Activity.create(:name => "Basketball")
Activity.create(:name => "BBQ")
Activity.create(:name => "Bird Watching")
Activity.create(:name => "Kids Activity")
Activity.create(:name => "Physical Training")
Activity.create(:name => "Soccer")
Activity.create(:name => "Table Tennis")
