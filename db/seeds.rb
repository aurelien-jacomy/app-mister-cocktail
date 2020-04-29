# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
document = JSON.parse(open(url).read)

document["drinks"].each do |hash_ingredient|
  ingredient_name = hash_ingredient["strIngredient1"]
  ingredient = Ingredient.new(name: ingredient_name)
  ingredient.save
  puts "Ingredient #{ingredient.name} #{ingredient.id} created"
end

puts "done ingredients"

Cocktail.create!(name: "Daikiri")
Cocktail.create!(name: "Bloody Mary")
Cocktail.create!(name: "White Russian")
Cocktail.create!(name: "Gin Tonic")
