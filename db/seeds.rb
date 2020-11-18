# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all
Favorite.destroy_all

jay = User.create(
    username: 'jay',
    fullname: 'zhengjianliu',
    password: '1234',
    address: '2321 23thst ',
    zipcode: '11368',
    city: 'queens',
    phone: '9173530171',
    email: 'comezheng@gmail.com'
)

item = Item.create(
    ownerId: jay.id,
    images: [],
    price: '123',
    description: '2whviqwvfivq',
    condition: 'new'
)

favor = Favorite.create(
    user: jay,
    item: item
)