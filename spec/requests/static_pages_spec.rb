# run tests with control line
# bundle exec rspec spec/requests/static_pages_spec.rb
require 'spec_helper'

describe "Static Pages" do
# corresponds with the utilities.rb
  subject { page }

  describe "Home page" do

    before { visit root_path }

    it { should have_selector('h1', :text => 'Sample App') }
    it { page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App") }
    it { page.should_not have_selector('title', :text => '| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { page.should have_content('Help') }
    it { page.should have_selector('title', :text => " | Help") }
  end

  describe "About page" do
    before { visit about_path }

    it "should have the content 'About'" do
      page.should have_content('About Us')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title', :text => " | About Us")
    end
  end

  describe "Contact page" do
    before { visit contact_path }

    it "should have the h1 'contact'" do
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'contact Us'" do
      page.should have_selector('title',
                        :text => " | Contact")
    end
  end

end

