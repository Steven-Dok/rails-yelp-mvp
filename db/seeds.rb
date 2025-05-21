# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
Restaurant.create!(name: 'Dishoom', address: '7 Boundary St, London E2 7JE',
                   phone_number: '0145789632', category: 'french')

Restaurant.create!(name: 'Sakura Sushi', address: '22 avenue du Japon, Tokyo',
                   phone_number: '+81312345678', category: 'japanese')

Restaurant.create!(name: 'Trattoria Roma', address: '5 Piazza Navona, Rome',
                   phone_number: '+390612345678', category: 'italian')

Restaurant.create!(name: 'Great Wall', address: '88 Nanjing Road, Shanghai',
                   phone_number: '+862112345678', category: 'chinese')

Restaurant.create!(name: 'Bruxelles Bistro', address: 'Place de la Monnaie, Bruxelles',
                   phone_number: '+3221234567', category: 'belgian')

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished seeding!'
