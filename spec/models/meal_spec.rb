require 'rails_helper'

describe Meal do
  it "must have a date" do
    meal = Meal.new
    expect(meal.valid?).to eq false
  end

  it "must have a category" do
    meal = Meal.new
    expect(meal.valid?).to eq false
  end

  context 'have a recipe' do
    it 'should return the name of the recipe' do
      m1 = Meal.create(date: DateTime.new)
      r1 = Recipe.create(name: 'Lasagna')
      m1.recipe = r1
      expect(m1.recipe.name).to eq 'Lasagna'
    end
  end










  
end # End of Meal
