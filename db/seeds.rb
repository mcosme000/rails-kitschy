require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Lesson.destroy_all
User.destroy_all

puts "creating users"

User.create([
  { email: "maria@example.com", password: "1234567", first_name: "Maria" },
  { email: "mmak@example.com" , password: "1234567", first_name: "M"  },
  { email: "jun@example.com", password: "1234567", first_name: "Jun"  },
  { email: "jay@example.com", password: "1234567", first_name: "Jay"  }
            ])
puts "finished creating users"
puts "seeding 16 lessons..."

# 25.times do
#   Lesson.create!(
#     name: Faker::Food.dish,
#     address: Faker::Address.full_address,
#     cuisine_genre: Faker::Food.ethnic_category,
#     description: Faker::Food.description,
#     capacity: Faker::Number.within(range: 1..10),
#     fee: Faker::Number.within(range: 0..150),
#     lesson_length_minutes: Faker::Number.within(range: 30..120),
#     user: User.all.sample
#   )
# end

Lesson.create(
  name: "Authentic Turkish Doner Kebab",
  address: "5-chōme-6 Jingūmae, Shibuya City, Tokyo 150-0001",
  cuisine_genre: "Turkish",
  description: "Doner meat kebabs are popular take-out foods, especially after a night at the pub. This favorite is so tasty — I'm sure once you try it, you'll certainly want to make more! Serve with warmed (lightly toasted) pita bread, chili sauce, and a salad of shredded cabbage, carrot, onion, and sliced cucumber. Also great to add as a topping for pizzas. Great to make in advance, slice and freeze.",
  capacity: Faker::Number.within(range: 1..10),
  fee: Faker::Number.within(range: 0..150),
  lesson_length_minutes: Faker::Number.within(range: 30..120),
  user: User.all.sample,
  main_photo: "https://www.allrecipes.com/thmb/ZCjbzoVzuZY-JMlu8AqpBC-G9TU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/5095331-a29b9c100ce34ed8bcfc044e80d3bee8.jpg"
)

Lesson.create(
  name: "Grain-Free Broccoli Fritters",
  address: "2 Chome-1 Dogenzaka, Shibuya City, Tokyo 150-0043",
  cuisine_genre: "Vegetarian",
  description: "These grain-free broccoli fritters are a great way to use up extra cooked broccoli, and they are on the table in minutes!",
  capacity: Faker::Number.within(range: 1..10),
  fee: Faker::Number.within(range: 0..150),
  lesson_length_minutes: Faker::Number.within(range: 30..120),
  user: User.all.sample,
  main_photo: "https://www.allrecipes.com/thmb/BV4DhQ3aLqonqqOsaHfxnlps_Hs=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Broccoli-Fritters-4x3-1-6f1aca37a12840cf9b95236fee6eb7fb.jpg"
)

Lesson.create(
  name: "Red Velvet Cheesecake Swirl Brownies",
  address: "1-chōme-11-9 Sasazuka, Shibuya City, Tokyo 151-0073",
  cuisine_genre: "Baked food",
  description: "These red velvet cheesecake brownies are moist, delicious, and absolutely beautiful! Perfect for red velvet cake lovers; adds a different twist to the traditional cake. A great dessert for Valentine's Day and can be made ahead.",
  capacity: Faker::Number.within(range: 1..10),
  fee: Faker::Number.within(range: 0..150),
  lesson_length_minutes: Faker::Number.within(range: 30..120),
  user: User.all.sample,
  main_photo: "https://www.allrecipes.com/thmb/uIrY0puwKI7tVu8-_d4s7cdI8yc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/red-velvet-cheesecake-swirl-brownies-photo-by-lynninma-1091077-261fc4c8bad14752ae4f909d780b3c3c.jpg"
)

Lesson.create(
  name: "Gnocchi with Pomodoro Sauce",
  address: "4-chōme-11-8 Ikenohata, Taito City, Tokyo 110-0008",
  cuisine_genre: "Italian",
  description: "Fluffy potato dumplings sautéed for a crispy exterior and tender interior with a simple tomato sauce. I used the oil from the marinated mozzarella ball container for the sauce with great success.",
  capacity: Faker::Number.within(range: 1..10),
  fee: Faker::Number.within(range: 0..150),
  lesson_length_minutes: Faker::Number.within(range: 30..120),
  user: User.all.sample,
  main_photo: "https://www.allrecipes.com/thmb/ePcZEWAkiLh0HFBDuNNyPdXs66k=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Gnocchi-with-Pomodoro-Sauce-4x3-1-cbdd14bff3674378b7e097847fc24b1b.jpg"
)

Lesson.create(
  name: "大根まるごと一本使うミルフィーユ鍋！ レシピ・作り方",
  address: "2-chōme-19 Matsugaya, Taito City, Tokyo 111-0036",
  cuisine_genre: "Japanese",
  description: "簡単なのに華やか！旬のみずみずしい大根を美味しくたくさん食べられます！スライス大根なので辛味がなくお子さまも安心して召し上がれます！",
  capacity: Faker::Number.within(range: 1..10),
  fee: Faker::Number.within(range: 0..150),
  lesson_length_minutes: Faker::Number.within(range: 30..120),
  user: User.all.sample,
  main_photo: "https://recipe.r10s.jp/recipe-space/d/strg/ctrl/3/7c73e8174db852b1dda24f3779dbd0ef689ddbd0.25.2.3.2.jpg?interpolation=lanczos-none&fit=around|716:716&crop=716:716;*,*"
)

Lesson.create(
  name: "Chicken Quesadillas",
  address: "2 Chome-11-3 Meguro, Meguro City, Tokyo 153-0063",
  cuisine_genre: "Mexican food",
  description: "This chicken quesadilla recipe is great to make for parties. Zesty chicken, cooked peppers, and melted cheese are a delightful combination. Cut into wedges and serve with sour cream and salsa.",
  capacity: Faker::Number.within(range: 1..10),
  fee: Faker::Number.within(range: 0..150),
  lesson_length_minutes: Faker::Number.within(range: 30..120),
  user: User.all.sample,
  main_photo: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F68c8534d63b6bcf63b6fcc6a4bae3cab%2F1667259675273Quesidillas.jpg&q=60&c=sc&orient=true&poi=auto&h=512"
)

puts "Finished!"
