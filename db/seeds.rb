require "json"
require "open-uri"

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json = JSON.parse(open(url).read)
drinks = json["drinks"]

drinks.each do |ingredient|
  new_ingredient = Ingredient.create(
    name: ingredient["strIngredient1"]
  )
end

10.times do
  cocktail = Cocktail.create(name: Faker::Beer.name )
end

range = (0...10).to_a

10.times do
  cocktail = Dose.create(
    description: Faker::Beer.alcohol,
    cocktail_id: range.sample,
    ingredient_id: range.sample
  )
end
