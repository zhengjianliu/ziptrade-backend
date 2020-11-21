class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :ownerId, :images,:price, :description, :condition, :available
end
