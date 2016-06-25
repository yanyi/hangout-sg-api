class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity
  belongs_to :location

  has_many :event_users
  has_many :users, through: :event_users
end
