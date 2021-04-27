if Rails.env.development?
  puts "Cleaning database"
  Garden.destroy_all
  Tag.destroy_all
end

puts "Generating nice stuff"

little = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)


Plant.create(garden: little, name: 'Red Orchid', image_url: 'https://images.unsplash.com/photo-1516477266610-9e4c763da721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80')
Plant.create(garden: little, name: 'Canny', image_url: 'https://i.stack.imgur.com/KBNcC.png')
Plant.create(garden: little, name: "Maurice", image_url: 'https://static.boredpanda.com/blog/wp-content/uploads/2016/04/amazing-bonsai-trees-5-1-5710e79582acc__700.jpg')

names = %w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers spicy trashy greedy poisonous)

names.each do |name|
  Tag.create(name: name)
end


puts "You have now #{Garden.count} gardens, #{Plant.count} plants and #{Tag.count} tags"
