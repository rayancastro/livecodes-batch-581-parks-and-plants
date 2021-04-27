Garden.destroy_all if Rails.env.development?

little = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)


Plant.create(garden: little, name: 'Red Orchid', image_url: 'https://images.unsplash.com/photo-1516477266610-9e4c763da721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80')
Plant.create(garden: little, name: 'Dandilion', image_url: 'https://www.gardeningknowhow.com/wp-content/uploads/2017/08/dandelion-seed-head.jpg')
