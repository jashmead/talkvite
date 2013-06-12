require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "TalkVite" }

  describe "Home page" do

    it "should have the content 'TalkVite'" do
      visit '/static_pages/home'
      expect(page).to have_content('TalkVite')
    end

    it "should have the title 'TalkVite'" do
      visit '/static_pages/home'
      expect(page).to have_title("TalkVite")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("TalkVite | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("TalkVite | About")
    end
  end

 describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end

end
