class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :date_time, :user_id

  belongs_to :user
  belongs_to :activity
  belongs_to :location

  has_many :users
end
