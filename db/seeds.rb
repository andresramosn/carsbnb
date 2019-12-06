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


  brand = ["Toyota", "Kia", "Renault", "Seat", "BMW", "Mercedes Benz", "Toyota", "Kia", "Renault", "Seat", "BMW", "Mercedes Benz", "Toyota", "Kia", "Renault", "Seat", "BMW", "Mercedes Benz", "BMW", "Mercedes Benz"]
  model = ["Corolla", "Sportage", "Clio", "Leon", "x1", "CLA", "Corolla", "Sportage", "Clio", "Leon", "x1", "CLA", "Corolla", "Sportage", "Clio", "Leon", "x1", "CLA", "x1", "CLA"]
  address = ["16 Villa Gaudelet, Paris",
    "Carrer de Ramon Trias Fargas, 25-27, 08005 Barcelona",
    "Passeig de Lluís Companys, 08003 Barcelona",
    "Carrer Tuset, 5, 08006, Barcelona",
    "Carrer Alloza, 23 08016, Barcelona",
    "Carrer de Girona, 37, 08010 Barcelona",
    "Calle Rector Homs, 26, 08820, Prat Llobregat Barcelona, Barcelona",
    "Calle Del Templer Guiu, 45, 08184, Palau Solita Plegamans Barcelona",
    "Carrer del Consell de Cent, 366, 08009 Barcelona",
    "200 Villa Gaudelet, Paris",
    "Carrer de Ramon Trias Fargas, 150, 08005 Barcelona",
    "Passeig de Lluís Companys 100, 08003 Barcelona",
    "Carrer Tuset, 320, 08006, Barcelona",
    "Carrer Alloza, 230 08016, Barcelona",
    "Carrer de Girona, 370, 08010 Barcelona",
    "Calle Rector Homs, 260, 08820, Prat Llobregat Barcelona, Barcelona",
    "Calle Del Templer Guiu, 450, 08184, Palau Solita Plegamans Barcelona",
    "Carrer del Consell de Cent, 1100, 08009 Barcelona",
    "Calle Rector Homs, 360, 08820, Prat Llobregat Barcelona, Barcelona",
    "Calle Del Templer Guiu, 550, 08184, Palau Solita Plegamans Barcelona",
    "Carrer del Consell de Cent, 1300, 08009 Barcelona"
  ]
  photo = ["https://images.unsplash.com/photo-1521657142174-c7353dc830cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80",
    "https://images.unsplash.com/photo-1524459588802-54e510a87b85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80",
    "https://images.unsplash.com/photo-1554176332-0fad4400e3aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
    "https://images.unsplash.com/photo-1494009041405-cb00eb38b186?ixlib=rb-1.2.1&auto=format&fit=crop&w=1225&q=80",
    "https://images.unsplash.com/photo-1504455637435-8d1a13cd8a93?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1496759350031-2bed48f0678e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1584&q=80",
    "https://images.unsplash.com/photo-1521657142174-c7353dc830cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80",
    "https://images.unsplash.com/photo-1524459588802-54e510a87b85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80",
    "https://images.unsplash.com/photo-1554176332-0fad4400e3aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
    "https://images.unsplash.com/photo-1494009041405-cb00eb38b186?ixlib=rb-1.2.1&auto=format&fit=crop&w=1225&q=80",
    "https://images.unsplash.com/photo-1504455637435-8d1a13cd8a93?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1496759350031-2bed48f0678e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1584&q=80",
    "https://images.unsplash.com/photo-1521657142174-c7353dc830cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80",
    "https://images.unsplash.com/photo-1524459588802-54e510a87b85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80",
    "https://images.unsplash.com/photo-1554176332-0fad4400e3aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
    "https://images.unsplash.com/photo-1494009041405-cb00eb38b186?ixlib=rb-1.2.1&auto=format&fit=crop&w=1225&q=80",
    "https://images.unsplash.com/photo-1504455637435-8d1a13cd8a93?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1496759350031-2bed48f0678e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1584&q=80",
    "https://images.unsplash.com/photo-1524459588802-54e510a87b85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80",
    "https://images.unsplash.com/photo-1554176332-0fad4400e3aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80"]
  description = ["4 Seats, 2 Doors, Air Conditioning, Manual gearbox", "Sporty car, 4 Seats, 2 Doors, Air Conditioning, Manual gearbox", "Sporty car, 4 Seats, 2 Doors, Air Conditioning, Automatic gearbox", "Classic car, 4 Seats, 4 Doors, Air Conditioning, Automatic gearbox", "Sporty car, 4 Seats, 4 Doors, Air Conditioning, Automatic gearbox", "Sporty car, 4 Seats, 4 Doors, Air Conditioning, Secuential gearbox", "4 Seats, 2 Doors, Air Conditioning, Manual gearbox", "Sporty car, 4 Seats, 2 Doors, Air Conditioning, Manual gearbox", "Sporty car, 4 Seats, 2 Doors, Air Conditioning, Automatic gearbox", "Classic car, 4 Seats, 4 Doors, Air Conditioning, Automatic gearbox", "Sporty car, 4 Seats, 4 Doors, Air Conditioning, Automatic gearbox", "Sporty car, 4 Seats, 4 Doors, Air Conditioning, Secuential gearbox", "4 Seats, 2 Doors, Air Conditioning, Manual gearbox", "Sporty car, 4 Seats, 2 Doors, Air Conditioning, Manual gearbox", "Sporty car, 4 Seats, 2 Doors, Air Conditioning, Automatic gearbox", "Classic car, 4 Seats, 4 Doors, Air Conditioning, Automatic gearbox", "Sporty car, 4 Seats, 4 Doors, Air Conditioning, Automatic gearbox", "Sporty car, 4 Seats, 4 Doors, Air Conditioning, Secuential gearbox", "Sporty car, 4 Seats, 4 Doors, Air Conditioning, Automatic gearbox", "Sporty car, 4 Seats, 4 Doors, Air Conditioning, Secuential gearbox"]

counter = 0

20.times do |_x|
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



