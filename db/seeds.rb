puts 'Starting seeds'

puts 'Deleting old Properties'
Property.delete_all
puts 'Properties cleaned'
puts 'Cleaning Users'
User.delete_all
puts 'User cleaned'

puts 'Adding Users'

new_users = []

5.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '123123',
    password_confirmation: '123123'
  )
  puts "User #{user.id} was created"
  new_users << user.id
end

puts 'Creating new properties:'

cities = [
  'Berlin',
  'Hamburg',
  'Munich',
  'Essen',
  'Frankfurt',
  'Düsseldorf',
  'Dortmund',
  'Leipzig',
  'Weimar',
  'Dresden',
  'Cologne',
  'Bonn',
  'Mannheim',
  'Stuttgart',
  'Bremen',
  'Kiel'
]

50.times do
  property = Property.create(
    address: "#{Faker::Address.street_address}, #{cities.sample},#{Faker::Address.country_by_code(code: 'DE')}",
    size: rand(80..200),
    construction_year: rand(1990..2020),
    rooms: rand(1..4),
    price: rand(1200...4000),
    property_type: 'Apartment',
    state_property: ['Premium', 'Normal', 'Simple'].sample,
    user_id: new_users.sample,
    market: ['Sell', 'Rent'].sample,
    photo_id: rand(1..11)
  )
  puts "Property #{property.id} was created"
end

puts "Everything up to date"
