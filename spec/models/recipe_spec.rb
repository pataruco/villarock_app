require 'rails_helper'

describe Recipe do
    it "must have a name" do
    r1 = Recipe.create
    expect(r1.valid?).to eq false
  end
end
