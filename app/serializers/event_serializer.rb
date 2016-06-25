class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :date_time

  belongs_to :user
  belongs_to :activity
  belongs_to :location
end
