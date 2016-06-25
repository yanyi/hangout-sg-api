class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity
  belongs_to :location
end
