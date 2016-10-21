require 'spec_helper'

feature 'so I can quickly go to websites I regularly visit' do
  scenario 'see list of links on the homepage' do
    visit('/links')
    click_button("Add Link")
    fill_in 'url', :with => 'http://www.quickmeme.com/meme/3sg5lh'
    fill_in 'title', :with => 'Dirty SQL'
    click_button 'Add'
    expect(page.status_code).to eq(200)
    within 'ul#links' do
      expect(page).to have_content('quick')
    end
  end
end
