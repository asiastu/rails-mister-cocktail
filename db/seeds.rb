require "open-uri"
require "json"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'



url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
records = JSON.parse(open(url).read)
records.each do |record|

    record[1].each do |drink|
        Ingredient.create!({name: drink["strIngredient1"]})
      end
  # Ingredient.create!(record)
end

puts 'Finished!'
