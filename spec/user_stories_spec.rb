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
end
