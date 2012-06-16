require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    before { visit '/pages/home' }
    it "should have correct h1" do
      page.should have_content "Sample App"
    end

    it "should have correct title" do
      page.should have_selector('title', :content => "#{base_title} | Home")
    end
  end

  describe "Contact page" do
    before { visit '/pages/contact' }
    it "should have correct title" do
      page.should have_selector('title', :content => "#{base_title} | Contact")
    end
  end

end
