require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1',    content: title) }
    it { should have_selector('title', content: "#{base_title} | #{title}") }
  end

  describe "Home page" do
    before { visit root_path }
    let(:title) { 'Home' }
    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:title) { 'Contact' }
    it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Contact"
    page.should have_selector 'title', content: "#{base_title} | Contact"
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', content: "#{base_title} | Sign up"
    click_link "sample app"
    page.should have_selector 'title', content: "#{base_title} | Home"
  end

end
