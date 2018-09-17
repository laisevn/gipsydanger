class GeocodeSerializer < ActiveModel::Serializer
  attributes :lat, :long
  belongs_to :entrie
end
