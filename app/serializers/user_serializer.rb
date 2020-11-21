class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :fullname, :address, :zipcode, :city, :phone, :displayphone, :email,:items,:favorites

  def items
    Item.all.filter do |item|
      item.ownerId === self.object.id
    end
  end

  def favorites
    Favorite.all.filter do |favorite|
      favorite.user.id === self.object.id
    end
  end

end
