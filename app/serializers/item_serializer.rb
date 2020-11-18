class ItemSerializer < ActiveModel::Serializer
  attributes :id, :ownerId, :images,:price, :description, :condition, :available
end
