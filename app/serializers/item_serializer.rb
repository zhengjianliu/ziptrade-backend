class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :ownerId, :owner, :images,:price, :description, :condition, :available
  def owner
    User.all.find do |user|
      user.id === self.object.ownerId
    end
  end
end
