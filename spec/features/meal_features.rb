require 'rails_helper'

describe 'adding a Meal' do

  it 'a user can add Meal' do
    # visit '/ingredients/new'  
    visit new_ingredient_path
    fill_in 'Name', with: 'Basil'
    click_button 'Submit'

    expect(page).to have_content 'Basil'
  end
end