# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database'
Car.destroy_all
User.destroy_all

# restaurants
# puts 'Creating cars'

# 5.times do |_x|
#   random_email = ("a".."z").to_a.sample(10).join + "@gmail.com"
#   random_password = (1..99).to_a.sample(8).join
#   random_price = (1..9).to_a.sample(4).join.to_i
#   brand = ["Toyota", "Kia", "Renault", "Seat", "BMW"]
#   model = ["x1", "x2", "x3", "x4"]
#   address = ["bailen 152, barcelona", "corsega 523, barcelona", "plaza real 100", "mallorca 1432"]
#   #create cars
#   user = User.create(email: random_email, password: random_password)
#   car = Car.create(price: random_price, model: model.sample, brand: brand.sample, address: address.sample, description: "lorem ipsum", photo: "image/upload/v1575393584/lmvvrz3kpo4qevcxm5ns.jpg", user_id: user.id)
# end

# puts "#{User.count} users created & #{Car.count} cars created"



