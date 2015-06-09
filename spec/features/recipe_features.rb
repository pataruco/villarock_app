require 'rails_helper'

describe 'adding an recipe' do

  it 'a user can a recipe to the site' do
    # visit '/ingredients/new'  
    visit new_recipe_path
    fill_in 'Name', with: 'Lasagna'
    click_button 'Submit'

    expect(page).to have_content 'Lasagna'
  end
end