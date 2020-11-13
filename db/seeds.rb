require 'open-uri'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

result = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
ingredients = result['drinks']

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

# open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
# ingredients.read.each_line do |response|
#   drinks = JSON.parse(response)
#   ingredient = {
#     name: drinks[strIngredient1]
#   }
#   ingredients << ingredient
# end
# Ingredient.create!(ingredient)
