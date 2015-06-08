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





end # End of recipe
