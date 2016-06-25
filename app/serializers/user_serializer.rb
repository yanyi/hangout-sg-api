class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :profile_image_url

  belongs_to :area

  has_many :events
end
