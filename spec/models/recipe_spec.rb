require 'rails_helper'

describe Recipe do
  m1 = Meal.create(date: DateTime.new)
  r1 = Recipe.create(name: 'Lasagna')
  m1.recipe = r1
end
