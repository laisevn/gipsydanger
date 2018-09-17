class EntrieSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :phone
  
  has_many :geocodes 
  has_many :scores
end
