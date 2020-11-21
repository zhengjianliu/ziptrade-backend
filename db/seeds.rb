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

shawn = User.create(
    username: 'shawn',
    fullname: 'shawn wong',
    password: '4214',
    address: '2321 23t213kjfsbqbfiqbibfqwf ',
    zipcode: '11369',
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

itemtwo = Item.create(
    ownerId: jay.id,
    images: [],
    price: '999',
    description: 'apple iphone',
    condition: 'mint'
)


itemthree = Item.create(
    ownerId: shawn.id,
    images: [],
    price: '999',
    description: 'apple iphone',
    condition: 'mint'
)

Favorite.create(
    user: jay,
    item: item
)

Favorite.create(
    user: jay,
    item: itemthree
)

Favorite.create(
    user: jay,
    item: itemtwo
)

Favorite.create(
    user: shawn,
    item: item
)