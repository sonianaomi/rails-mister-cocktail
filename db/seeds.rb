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
