# run tests with control line
# bundle exec rspec spec/requests/static_pages_spec.rb
require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
# capybara methods visit & page.should
      visit root_path
      page.should have_selector('h1',
                        :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                        :text => " | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit about_path
      page.should have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                        :text => " | About Us")
    end
  end

  describe "Contact page" do
    it "should have the h1 'contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should have the title 'contact Us'" do
      visit contact_path
      page.should have_selector('title',
                        :text => " | Contact")
    end
  end

end

