feature 'so that I can save a website' do
  scenario "add site's title and address to bookmark manager" do
    visit('/links')
    click_button("Add Link")
    fill_in 'url', with: 'http://www.developermemes.com/'
    fill_in 'title', with: 'funny memes'
    click_button('Add')
    within 'ul#links' do
      expect(page).to have_content('memes')
    end
  end
end
