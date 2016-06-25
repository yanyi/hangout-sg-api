class User < ActiveRecord::Base
  belongs_to :area

  has_many :event_users
  has_many :events, through: :event_users, dependent: :destroy
end
