class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :fullname, :password_digest, :address, :zipcode, :city, :phone, :displayphone, :email,:dataset

  def dataset
    Item.all.filter do |item|
      item.ownerId === self.object.id
    end
  end

end
