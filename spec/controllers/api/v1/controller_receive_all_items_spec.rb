require 'rails_helper'

RSpec.describe Api::V1::ItemsController do

    it 'receives items' do
      get :all
      byebug
      items = JSON.parse(response.body)
      items.count = 500
      items[0][:created_at] = nil
      items[0][:updated_at] = nil

  end
end
