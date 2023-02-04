require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning database..."
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

Lesson.create(
  name: "Authentic Turkish Doner Kebab",
  address: "5-6 Jingumae, Shibuya, Tokyo 150-0001",
  cuisine_genre: "Turkish",
  description: "Doner meat kebabs are popular take-out foods, especially after a night at the pub. This favorite is so tasty — I'm sure once you try it, you'll certainly want to make more! Serve with warmed (lightly toasted) pita bread, chili sauce, and a salad of shredded cabbage, carrot, onion, and sliced cucumber. Also great to add as a topping for pizzas. Great to make in advance, slice and freeze.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://www.allrecipes.com/thmb/ZCjbzoVzuZY-JMlu8AqpBC-G9TU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/5095331-a29b9c100ce34ed8bcfc044e80d3bee8.jpg"
)

Lesson.create(
  name: "Grain-Free Broccoli Fritters",
  address: "2-1 Dogenzaka, Shibuya, Tokyo 150-0043",
  cuisine_genre: "Vegetarian",
  description: "These grain-free broccoli fritters are a great way to use up extra cooked broccoli, and they are on the table in minutes!",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://www.allrecipes.com/thmb/BV4DhQ3aLqonqqOsaHfxnlps_Hs=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Broccoli-Fritters-4x3-1-6f1aca37a12840cf9b95236fee6eb7fb.jpg"
)

Lesson.create(
  name: "Sweet Korean Pancakes (Hotteok) - Korean Bapsang ",
  address: "1-9 Sasazuka, Shibuya, Tokyo 151-0073",
  cuisine_genre: "Korea",
  description: "Hotteok is a Korean popular street food and dessert that tourists and locals alike consume regularly. In short, these sweet pancakes consist of a golden dough outer layer with a brown sugar-based, gooey inside. When you bite into hotteok, you are met with a burst of sweetness and the occasional nuts or berries. Plus, these pancakes are fairly easy to make!",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://www.koreanbapsang.com/wp-content/uploads/2019/02/DSC_2737-1.jpg"
)

Lesson.create(
  name: "Gnocchi with Pomodoro Sauce",
  address: "Tokyo Ikenohata",
  cuisine_genre: "Italian",
  description: "Fluffy potato dumplings sautéed for a crispy exterior and tender interior with a simple tomato sauce. I used the oil from the marinated mozzarella ball container for the sauce with great success.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://www.allrecipes.com/thmb/ePcZEWAkiLh0HFBDuNNyPdXs66k=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Gnocchi-with-Pomodoro-Sauce-4x3-1-cbdd14bff3674378b7e097847fc24b1b.jpg"
)

Lesson.create(
  name: "Cream Puff 'Crack Buns' (Choux au Craquelin)",
  address: "2-19 Matsugaya, Taito, Tokyo 111-0036 Taito",
  cuisine_genre: "Belgian",
  description: "These gorgeous cream puff 'crack buns' were inspired by the Great British Baking Show, which is currently my favorite thing on television. Speaking of favorite things, Boston cream pie is one of my all-time favorite desserts, and this was basically an individually portioned, probably superior version of that. These would be great filled with all kinds of things, but it's hard to beat vanilla bean pastry cream.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8111078.jpg&q=60&c=sc&orient=true&poi=auto&h=512"
)

Lesson.create(
  name: "Chicken Quesadillas",
  address: "Tokyo Meguro",
  cuisine_genre: "Mexican",
  description: "This chicken quesadilla recipe is great to make for parties. Zesty chicken, cooked peppers, and melted cheese are a delightful combination. Cut into wedges and serve with sour cream and salsa.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F68c8534d63b6bcf63b6fcc6a4bae3cab%2F1667259675273Quesidillas.jpg&q=60&c=sc&orient=true&poi=auto&h=512"
)

Lesson.create(
  name: "Gyoza (Japanese Potstickers)",
  address: "7 Naokawa kaminaomi, Saiki shi, Oita ken",
  cuisine_genre: "Japanese",
  description: "Juicy on the inside, crispy and golden brown on the outside, these Japanese pan-fried dumplings, or Gyoza, are a popular weeknight meal as well as a great appetizer for your next dinner party.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://www.justonecookbook.com/wp-content/uploads/2020/04/Gyoza-3096-II.jpg"
)

# DONT WORK
Lesson.create(
  name: "Anzac Biscuits (Australian Coconut-Oat Cookies)",
  address: "15, Miyoshi, Tokushima",
  cuisine_genre: "Australian",
  description: "I introduce to you my traditional recipe from Australia and New Zealand. Associated with the joint public holiday (ANZAC Day) to commemorate the Gallipoli landings during WW1.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F46f915dad11c16fd1f5c58600fe0332c%2F1644165730ANZAC_cookie_72.jpg&q=60&c=sc&orient=true&poi=auto&h=512"
)

Lesson.create(
  name: "Ghormeh Sabzi (Persian Herb Stew)",
  address: "10 Tatara, Fukuoka shi higashi ku, Fukuoka ken",
  cuisine_genre: "Persian",
  description: "Ghormeh sabzi is deliciously savory and loaded with the flavors of several different green herbs. It's traditionally served atop white rice (polow). You can also serve it with lavash bread.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5071244.jpg&q=60&c=sc&orient=true&poi=auto&h=512"
)

Lesson.create(
  name: "Chinese Pork Dumplings",
  address: "4 Kamisuga, Taki gun odai cho, Mie ken",
  cuisine_genre: "Chinese",
  description: "These Chinese dumplings are from Liana Cafe House in Seattle's International District. They sell these traditional fried pork dumplings from a tiny takeout shop but with this recipe, you can see how to make them at home!",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8612426.jpg&q=60&c=sc&orient=true&poi=auto&h=512"
)

Lesson.create(
  name: "Vegetarian Moussaka",
  address: "8 Shiraicho, Kofu shi, Yamanashi ken",
  cuisine_genre: "Greek",
  description: "This vegetarian moussaka recipe always gets rave reviews from vegetarians and non-vegetarians alike. Easy to make, but takes time. Serve with salad.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://www.allrecipes.com/thmb/1xLhz3k83_lEGUe4qaQpe5e1q6s=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8139887-f05cfb8d94af4f7bbf11fa62d03e7163.jpg"
)

# DONT WORK
Lesson.create(
  name: "Indian Chicken Curry (Murgh Kari)",
  address: "15, Miyako, Fukuoka",
  cuisine_genre: "Indian",
  description: "This is a really good recipe for spicy Indian chicken curry. It's pretty easy to make and tastes really good!",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2Ff9c115f01ae5ae1e43d3c32c5d9fc50b%2F1664242175014fish.jpg&q=60&c=sc&orient=true&poi=auto&h=512"
)

Lesson.create(
  name: "Pork Sinigang",
  address: "4-9 Takashimadaira, Itabashi, Tokyo 175-0082",
  cuisine_genre: "Filipino",
  description: "Sinigang is a Filipino soup cooked with pork. Serve with rice and for additional sauce, use soy or fish sauce. If you want to, you can add what Filipinos call gabi gabi, which is a small taro root. When peeled they look like potatoes. You can add five to six of them when you add the water and make sure they are cooked through. Take them out when they are cooked because they can get too soft.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5169658.jpg&q=60&c=sc&orient=true&poi=auto&h=512"
)

Lesson.create(
  name: "Traditional Sauerbraten",
  address: "12, Kitakami, Iwate",
  cuisine_genre: "German",
  description: "For this sauerbraten, I found two slightly different handwritten versions of my Grandmother's recipe. Born in Nekkar am Rhein in 1904, she naturally learned to cook traditional German meals as a young woman and didn't rely on a cookbook. I try to capture the nuance in this. Serve with potato dumplings.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://www.allrecipes.com/thmb/p-dHLaIxDwuSU0TpqALsVmEKflA=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/221361-traditional-sauerbraten-beauty-4x3-BP-2925-a1b153f8bdfd4e4b840d5c802d3e16a3.jpg"
)

Lesson.create(
  name: "Ayam Penyet Pedas (Indonesian Spicy Penyet Chicken)",
  address: "9, Kitakami, Iwate",
  cuisine_genre: "Indonesian",
  description: "Ayam Penyet (Penyet Chicken) is an incredibly spicy Indonesian dish that will make your tongue feel like burning... you will need to go to a special Asian grocery store to get some of the ingredients.",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://www.allrecipes.com/thmb/zzM_pcft-C3lMyJlw_QE_xmZfa0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/5401068-4c01bd57dbd54517910c1dcfcdcc57cf.jpg"
)

Lesson.create(
  name: "Perfect Baked Jerk Chicken",
  address: "13 Osaki, Ako shi, Hyogo ken",
  cuisine_genre: "Jamaican",
  description: "This baked jerk chicken is not too sweet, not too spicy. I was on the hunt for a perfect jerk seasoning and ended up making my own blend. Hope you like it!",
  capacity: rand(1..10),
  fee: 10 * rand(1..15),
  lesson_length_minutes: 15 * rand(2..8),
  user: User.all.sample,
  main_photo: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8042977.jpg&q=60&c=sc&orient=true&poi=auto&h=512"
)

puts "Finished!"
