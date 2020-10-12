# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
brands = ['NEXEN','BRIDGESTONE','HANKOOK','MICHELIN']
10.times do |i|
  Tyre.create(code:2056016, brand:brands.sample,year:2009+rand(10), quantity: i*rand(10), price: 200*(rand(3)+1))
end