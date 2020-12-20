# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Deleting DB...'
Flat.destroy_all

puts 'Creating new Flats...'

London = Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Javea = Flat.create!(
  name: 'CASA DEL SOL. Sunny modern home w.WIFI in Old Town',
  address: 'Javea',
  description: 'The place is everything you need for a sweet and comfortable experience.',
  price_per_night: 90,
  number_of_guests: 4
)

Montpellier = Flat.create!(
  name: 'Duplex sous toiture à Montpellier rives du lez',
  address: 'Montpellier',
  description: 'Un superbe studio duplex pour vous entre les quartier Antigone Rives du lez !!',
  price_per_night: 35,
  number_of_guests: 2
)

Barcelone = Flat.create!(
  name: 'Feel at home abroad-Family friendly',
  address: 'Barcelone',
  description: 'Lovely apartment located in the heart of Barcelona, right next to all city attractions and hotspots within walking distance (Aquarium, Montjuïc Fountains & Castle, las Ramblas, Red District), 50 meters from the metro station Poble Sec.',
  price_per_night: 100,
  number_of_guests: 4
)
[London, Javea, Montpellier, Barcelone].each do |flat|
  puts "#{flat.name} created!"
end

puts "All Flats created!"
