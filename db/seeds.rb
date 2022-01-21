puts "🌱 Seeding spices..."
delivery_type = ["plane", "truck", "ship", "train"]

50.times do
  user_name = "#{Faker::Superhero.prefix}-#{Faker::Food.dish.split[0]}"
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: user_name,
    password: "password#{rand(1..100)}",
    email: Faker::Internet.email(name: user_name),
    image: Faker::Placeholdit.image(size: '300x300', format: 'jpeg', background_color: :random)
  )
end

30.times do
  FlightHistory.create(
    date: "#{Faker::Date.between(from: '2014-01-23', to: '2022-09-25')}T#{Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default).split[4]}.008Z",
    passengers: rand(1..3),
    departure: Faker::Alphanumeric.alpha(number: 3).upcase,
    destination: Faker::Alphanumeric.alpha(number: 3).upcase,
    carbon_lb: rand(100..3000),
    user_id: rand(User.all.first.id..User.all.last.id)
  )
end

200.times do
  ShippingHistory.create(
    date: "#{Faker::Date.between(from: '2014-01-23', to: '2022-09-25')}T#{Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default).split[4]}.008Z",
    weight: rand(1..30),
    distance: rand(100-400),
    method: delivery_type[rand(0..3)],
    carbon_lb: rand(0.1..20.0),
    user_id: rand(User.all.first.id..User.all.last.id)
  )
end

50.times do
  VehicleHistory.create(
    date: "#{Faker::Date.between(from: '2014-01-23', to: '2022-09-25')}T#{Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default).split[4]}.008Z",
    distance_value: rand(10..500),
    distance_unit: "mi",
    vehicle_make: Faker::Vehicle.make,
    vehicle_model: Faker::Vehicle.model,
    vehicle_year: rand(2000..2022),
    carbon_lb: rand(50..200),
  )
  end

20.times do
  CountryAverageCapita.create(
    country: Faker::Address.country,
    average: rand(5..1000)
  )
end

id_counter = User.all.first.id

User.all.length.times do
  electricity_value = rand(10..30)
  ElectricityHistory.create(
    date: "#{Faker::Date.between(from: '2014-01-23', to: '2022-09-25')}T#{Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default).split[4]}.008Z",
    country: "US",
    state: Faker::Address.state_abbr,
    electricity_value: electricity_value,
    carbon_lb: electricity_value * rand(2.5..4),
    user_id: id_counter
  )
  id_counter +=1
end

puts "✅ Done seeding!"
