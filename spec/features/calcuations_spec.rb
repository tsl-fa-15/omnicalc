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

  describe 'word count feature', :type => :feature do

    before(:each) do
      visit "/word_count/new"
      fill_in "Text", :with => "Hello world"
      fill_in "user_word", :with => "world"
      click_button "Submit"
    end

    it 'displays submitted text in word count results' do
      expect(page).to have_content('Hello world')
    end

    it "displays the submitted user word in word count results" do
      expect(page).to have_content('Occurrences of world')
    end

    it 'displays the correct word count in word count results' do
      expect(page).to have_content('2')
    end

    it 'displays the correct character count with spaces in word count results' do
      expect(page).to have_content('11')
    end

    it 'displays the correct character count without spaces in word count results' do
      expect(page).to have_content('10')
    end
  end
end
