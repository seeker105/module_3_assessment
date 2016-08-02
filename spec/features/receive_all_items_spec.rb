require 'rails_helper'

RSpec.feature "Consume API" do
  scenario 'receive all items' do
    visit api_v1_all_items_path

    items = JSON.parse(response.body)
    items.count = 500
    items[0][:created_at] = nil
    items[0][:updated_at] = nil
  end
end
