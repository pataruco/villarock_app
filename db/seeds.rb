# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ingredient.delete_all
IngredientRecipe.delete_all
Meal.delete_all
Recipe.delete_all

# Ingredients

def ingredients_seeder 
  ingredients = ['Tomato', 'Olive Oil','Sunflower Oil', 'Olive oil', 'Black Olives', 'Avocado', 'Garlic grounded', 'Basil', 'Cappers', 'Basmati rice', 'Rissoto rice', 'Tuna', 'Porridge', 'Sweet Potato', 'Coffe', 'Onion', 'Celeri', 'Chickpeas', 'Chocolate', 'Spanish chorizo', 'Venison Sasauges', 'Coriander', 'Cocunut milk', 'Croissant', 'Salad', 'Spinach', 'Feta cheese', 'Provence herbs', 'Mushrooms', 'Hummus', 'Ham', 'Lentils', 'Lettuce', 'Lemons', 'Milk', 'Low fat cheese', 'Low fat yoghurt', 'Sweet corn', 'Apples', 'Marmite', 'Mayo', 'Marmite', 'Mint', 'Mustard', 'Mozzarela cheese', 'Bread', 'Potato', 'Panceta', 'Eggs', 'Parmesan cheese', 'Turkey', 'Pepperoni', 'Cucumber', 'Gherkin', 'Peppers', 'Chicken', 'Goat cheese', 'White wine', 'Red wine', 'Quinoa', 'Rocket', 'Salmon', 'Soy sauce', 'Pizza base', 'Pizza sauce', 'Tereyaki sauce', 'Bacon', 'Tortillas', 'Balsamic vinegar', 'Wasabi', 'Carrots', 'Meat', 'Dill']

  ingredients.each do |ingredient|
    Ingredient.create(name: ingredient, stock: true)
  end 
end

ingredients_seeder

# i1 = Ingredient.create(name:'Tomato', stock: true)
# i2 = Ingredient.create(name:'Olive oil', stock: true)
