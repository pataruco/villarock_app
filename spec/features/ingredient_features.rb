require 'rails_helper'

describe 'adding an ingredient' do

  it 'a user can add an ingredient to the site' do
    # visit '/ingredients/new'  
    visit new_ingredient_path
    fill_in 'Name', with: 'Basil'
    click_button 'Submit'

    expect(page).to have_content 'Basil'
  end
end