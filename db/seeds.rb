# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "cocktail 1")
Cocktail.create(name: "cocktail 2")
Cocktail.create(name: "cocktail 3")
Cocktail.create(name: "cocktail 4")

5.times do
  dose = Dose.create({
    cocktail: Cocktail.first,
    ingredient: Ingredient.first,
    description: "1 cl"})
end
