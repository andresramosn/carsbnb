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

# cars and users
puts 'Creating users'


  brand = ["Toyota", "Kia", "Renault", "Seat", "BMW", "Mercedes Benz"]
  model = ["Corolla", "Sportage", "Clio", "Leon", "x1", "CLA"]
  address = ["bailen 152, barcelona", "corsega 523, barcelona", "plaza real 100, barcelona", "mallorca 1432, barcelona", "manigua 542, barcelona", "proser del castro 122, barcelona"]
  photo_path ="app/assets/images/"
  photo = ["https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-1.2.1&auto=format&fit=crop&w=778&q=80", "https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", "https://images.unsplash.com/photo-1517524008697-84bbe3c3fd98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80", "https://images.unsplash.com/photo-1517994112540-009c47ea476b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1381&q=80", "https://images.unsplash.com/photo-1494905998402-395d579af36f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", "https://images.unsplash.com/photo-1514867644123-6385d58d3cd4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"]
  description = ["4 Seats, 2 Doors, Air Conditioning, Manual gearbox", "Sporty car, 4 Seats, 2 Doors, Air Conditioning, Manual gearbox", "Sporty car, 4 Seats, 2 Doors, Air Conditioning, Automatic gearbox", "Classic car, 4 Seats, 4 Doors, Air Conditioning, Automatic gearbox", "Sporty car, 4 Seats, 4 Doors, Air Conditioning, Automatic gearbox", "Sporty car, 4 Seats, 4 Doors, Air Conditioning, Secuential gearbox"]

counter = 0

6.times do |_x|
  random_email = ("a".."z").to_a.sample(10).join + "@gmail.com"
  random_password = (1..99).to_a.sample(8).join
  #create users
  user = User.create(email: random_email, password: random_password)
  #create cars
  random_price = (1..9).to_a.sample(2).join.to_i
  car = Car.new(price: random_price, model: model[counter], brand: brand[counter], address: address[counter], description: description[counter], user_id: user.id)
  car.remote_photo_url = photo[counter]
  car.save
  counter += 1
end

puts "#{User.count} users created & #{Car.count} cars created"



