require 'spec_helper'

feature 'Create link' do
  scenario "add link title and url" do
    visit('/links/new')
    fill_in 'url', with: 'http://www.developermemes.com/'
    fill_in 'title', with: 'funny memes'
    #fill_in 'tags', with: 'internet'
    click_button('Add')
    #within 'links' do
      expect(page).to have_content('memes')
    #end
  end
end
