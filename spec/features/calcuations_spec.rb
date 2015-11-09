require 'rails_helper'

RSpec.describe "calcuations", :type => :feature do
  it "displays the calcuations form" do
    # user = FactoryGirl.create(:user, :username => "jdoe", :password => "secret")
    visit "/descriptive_statistics/new"
    # fill_in "Username", :with => "jdoe"
    # fill_in "Password", :with => "secret"
    # click_button "Log in"
    expect(page).to have_css('form[action="/descriptive_statistics/results"]')
  end

  it 'displays submitted text in word count results' do
    visit "/word_count/new"
    fill_in "Text", :with => "Hello world"
    fill_in "user_word", :with => "world"
    click_button "Submit"

    expect(page).to have_content('Hello world')
  end

  it "displays the submitted user word in word count results" do
  end
end
