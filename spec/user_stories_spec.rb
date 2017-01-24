require 'spec_helper'

describe 'User stories' do

  # As a time-pressed user
  # So that I can quickly go to web sites I regularly visit
  # I would like to see a list of links on the homepage
  feature 'display list of links' do
    scenario 'the user would like to see a list of links on her homepage' do
      Link.create(url: 'http://www.twitter.com', title: 'Twitter')
      visit '/links'
      within 'ul#links' do
        expect(page).to have_content('Twitter')
      end
    end
  end

  # As a time-pressed user
  # So that I can save a website
  # I would like to add the site's address and title to my bookmark manager
  feature 'add links' do
    scenario 'the user would like to add a link with its title and url' do
      visit '/links'
      click_button 'Add new link'
      fill_in :url, with: 'http://www.google.com'
      fill_in :title, with: 'Google'
      click_button 'Add'
      within 'ul#links' do
        expect(page).to have_content('Google')
      end
    end
  end


end
