require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    before {visit home_path}

    it "should have the content 'battlecats'" do
      expect(page).to have_content('battlecats')
    end

    it "should have the base title" do
      expect(page).to have_title("battlecats")
    end

    it "should not have the custom page title" do
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    before {visit help_path}

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      expect(page).to have_title("battlecats | Help")
    end
  end

  describe "About page" do
    before {visit about_path}

    it "should have the content 'About'" do
      expect(page).to have_content('About')
    end

    it "should have the right title" do
      expect(page).to have_title("battlecats | About")
    end
  end

  describe "Contact" do
    before {visit contact_path}

    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      expect(page).to have_title("battlecats | Contact")
    end
  end
end
