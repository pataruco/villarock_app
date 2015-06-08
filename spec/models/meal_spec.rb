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










  
end # End of Meal
