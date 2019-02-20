puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating Flats'

10.times {
  flat = Flat.new(name: Faker::GreekPhilosophers.name, address: Faker::Address.street_address, description: Faker::Restaurant.description, price_per_night: rand(100..1000), number_of_guests: rand(1..10))
  flat.save
}
puts 'Finished!'
