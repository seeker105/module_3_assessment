require 'rails_helper'

RSpec.feature "1st best buy story" do
  scenario '1st story' do
    # As a user
    # After I have searched a zip code for stores
    visit root_path
    fill_in "search", with: "80202"
    click_button "Search"

    # When I click the name of a store
    click_link "Best Buy Mobile - Cherry Creek Shopping Center"
    # Then my current path should be "/stores/:store_id"
    expect(current_path).to eq("stores/2740")
    # I should see the store name, store type and address with city, state and zip
    expect(page).to have_css(".storeName")
    expect(page).to have_css(".storeType")
    expect(page).to have_css(".address")
    expect(page).to have_css(".city")
    expect(page).to have_css(".state")
    expect(page).to have_css(".zip")
    # I should see an unordered list of the store hours in the following format:
    # * Mon: 10am-9pm
    # * Tue: 10am-9pm
    # * Wed: 10am-9pm
    # * Thurs: 10am-9pm
    # * Fri: 10am-9pm
    # * Sat: 10am-9pm
    # * Sun: 11am-7pm
    expect(page).to have_css(".hours", :count => 7)
  end
end
