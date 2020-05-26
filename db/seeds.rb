

puts "Adding fake restaurants"
100.times do |i|

  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5)
  )
  puts "Restaurant #{i + 1} created"
end
