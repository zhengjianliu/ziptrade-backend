class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :fullname, :address, :zipcode, :city, :phone, :displayphone, :email,:items,:favorites

  def items
    Item.all.filter do |item|
      item.ownerId === self.object.id
    end
  end

  def favorites
    self.object.favorites.map do |favorite|
      Item.all.find(favorite.item_id)

    end
  end

  # def favorites
  #   Favorite.all.filter do |favorite|
  #     favorite.user_id === self.object.id
  #   end
  # end
end
