##### Not needed anymore!!!! Since Rails 6
# if Rails.env.development?
#   puts "Please don't seed data in production, you moron!"
#   return
# end

# puts "Cleaning DB..."
# Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(
  name: "Carretão",
  stars: 5,
  address: "Ipanema, Rio"
)

10.times do
  Restaurant.create!(
    name: "#{Faker::Ancient.god} #{Faker::Ancient.primordial}",
    stars: rand(1..5),
    address: Faker::Address.full_address
  )
end

puts "Done!"
