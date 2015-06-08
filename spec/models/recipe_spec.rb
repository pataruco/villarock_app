require 'rails_helper'

describe Recipe do
  it "must have a Name" do
    r1 = Recipe.create
    expect(r1.valid?).to eq false
  end

  it "must have a Description" do
    r1 = Recipe.create
    expect(r1.valid?).to eq false
  end

  it "must have a Meal_id" do
    r1 = Recipe.create
    expect(r1.valid?).to eq false
  end

  # context 'has many ingredients' do
  #   it 'should return the ingredients' do
  #     r1 = Recipe.create(name: 'Lasagna')
  #     i1 = Ingredient.create(name:'Tomato')
  #     expect(r1.ingredients.where(name:'Tomato')).to eq 'Tomato'
  #   end
  # end






end # End of recipe
