require 'spec_helper'

feature 'So I can organise my links into different catagories'do
  scenario 'to tag links in my bookmark manager' do
    visit('/links')
    click_button("Add Link")
    fill_in 'url', with: 'http://www.developermemes.com/'
    fill_in 'title', with: 'funny memes'
    fill_in 'tags', with: 'funny'
    click_button('Add')
    link = Link.first
    expect(link.tags.map(&:name)).to include('funny')
  end
end
