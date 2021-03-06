##### Not needed anymore!!!! Since Rails 6
# if Rails.env.development?
#   puts "Please don't seed data in production, you moron!"
#   return
# end

# puts "Cleaning DB..."
# Restaurant.destroy_all

puts "Creating restaurants..."
carretao = Restaurant.create!(
  name: "Carretão",
  stars: 5,
  address: "Ipanema, Rio"
)

Review.create!(content: "Great BBQ!", restaurant: carretao)
Review.create!(content: "Nice place!", restaurant: carretao)
Review.create!(content: "Too expensive...", restaurant: carretao)

10.times do
  Restaurant.create!(
    name: "#{Faker::Ancient.god} #{Faker::Ancient.primordial}",
    stars: rand(1..5),
    address: Faker::Address.full_address
  )
end

puts "Done!"
