require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('title', content: "#{base_title} | Home") }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('title', content: "#{base_title} | Contact") }
  end

end
