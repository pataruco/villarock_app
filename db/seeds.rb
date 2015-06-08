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

tomato = Ingredient.create(name:'Tomato', stock: true)
olive_oil = Ingredient.create(name:'Olive oil', stock: true)
mozzarella = Ingredient.create(name:'Mozzarella cheese', stock: false)
sauce = Ingredient.create(name:'Tomato sauce', stock: false)

def recipe_seeder
  recipes = ['Ceasar salad', 'Capresa salad', 'Green salad', 'Choripan', 'Lemon chicken', 'Chicken fajitas', 'Thai green chicken curry', 'Honey-mustard chicken', 'Shread dry meat', 'Roast beef', 'burguers', 'Spinach soup', 'Lentils', 'Stir & Fry', 'Black bean fajitas', 'Potato tortilla', 'Aurbigne lasagna', 'Rissotto', 'Pancakes']
  recipes.each do |recipe|
    Recipe.create(name: recipe, preparation: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque ex et ratione voluptates iusto perspiciatis dolore aperiam rem vel. Alias culpa vero beatae dolorum blanditiis sequi iusto at obcaecati reiciendis.')
  end
end

recipe_seeder

pizza = Recipe.create(name: 'Pizza', preparation: 'Top the Pizza: Spoon a few tablespoons of sauce into the center of the pizza and use the back of a spoon to spread it out to the edges. Pile on all of your toppings. Bake the Pizza: Using a pizza peel or the backside of a baking sheet, slide your pizza (with the parchment or with the cornmeal) onto the baking stone. If you dont have a baking stone, bake the pizza right on the baking sheet. Cook for 5 minutes, then rotate the pizza. Slide the parchment out from under the pizza, if used. Bake for another 3-5 minutes, until the crust is golden-brown and the cheese looks toasty. Slice and Serve: Let the pizza cool slightly on a cooling rack, just until youre able to handle it. Slice it into pieces and serve.')

pizza.ingredients << tomato << olive_oil << mozzarella << sauce

pizza_lunch = Meal.create(date: Time.now, category: 1)
pizza_lunch.recipe = pizza



