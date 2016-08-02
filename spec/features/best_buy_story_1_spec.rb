require 'rails_helper'

RSpec.feature "1st best buy story" do
  scenario '1st story' do
    visit root_path
    fill_in "search", with: "80202"
    click_button "Search"
    expect(current_path).to eq('/search')
    expect(page).to have_content("17 Total Stores")

    expect(page).to have_css(".store", :count => 15)
    within("#store-1") do
      expect(page).to have_css(".long-name")
      expect(page).to have_css(".distance")
      expect(page).to have_css(".phone-number")
      expect(page).to have_css(".store-type")
    end
  end
end
