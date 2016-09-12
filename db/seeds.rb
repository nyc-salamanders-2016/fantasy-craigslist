# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = [
  {name: "Mythical Creatures"},
  {name: "Magic Potions"},
  {name: "Spells"}
]

Category.create!(categories)

articles = [
  {name: "Unicorn", description: "A horse with a horn on its head -- V RARE!!", price:1000000, category_id: 1},
  {name: "Leprechaun", description:"Generates unlimited gold!!!", price:2000000, category_id: 1},
  {name: "Live Forever Elixir", description: "One drop adds 100 years to your life", price:4000000, category_id: 2},
  {name: "Super Strength", description:"one cup gives you unparalleled strength for 1 hour", price: 1500000, category_id: 2},
  {name: "Fairy Godmother Summoner", description: "Summons a fairy godmother for 24 hours. One use.", price: 3000000, category_id: 3}
]

Article.create!(articles)
