require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do
    it "should have the content 'TalkVite'" do
      visit '/static_pages/home'
      expect(page).to have_content('TalkVite')
    end
  end

  describe "About Page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end


end
