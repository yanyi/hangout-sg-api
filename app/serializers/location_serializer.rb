class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :lat, :lng, :location_image_url

  belongs_to :area
end
