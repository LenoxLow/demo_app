ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

describe "Static pages" do

  	describe "Home page" do

    	it "should have the h1 'Sample App'" do
      		visit '/static_pages/home'
      		page.should have_selector('h1', :text => 'Sample App')
    	end

    	it "should have the base title" do
      		visit '/static_pages/home'
      		page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    	end

    	it "should not have a custom page title" do
      		visit '/static_pages/home'
      		page.should_not have_selector('title', :text => '| Home')
    	end
  	end
end


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
