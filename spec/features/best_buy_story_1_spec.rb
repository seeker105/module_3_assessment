require 'rails_helper'

RSpec.feature "1st best buy story" do
  scenario '1st story' do
    #     As a user
    # When I visit "/"
    visit root_path
    # And I fill in a search box with "80202" and click "search"
    fill_in "search", with: "80202"
    click_button "Search"
    # Then my current path should be "/search" (ignoring params)
    expect(current_path).to eq('/search')
    # And I should see stores within 25 miles of 80202
    # And I should see a message that says "17 Total Stores"
    expect(page).to have_content("17 Total Stores")

    # And I should see exactly 15 results
    expect(page).to have_css(".store", :count => 15)
    # And I should see the long name, city, distance, phone number and store type for each of the 15 results
    within("#store-1") do
      expect(page).to have_css(".long-name")
      expect(page).to have_css(".distance")
      expect(page).to have_css(".phone-number")
      expect(page).to have_css(".store-type")
    end
  end
end
