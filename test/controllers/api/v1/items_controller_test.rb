require "test_helper"

class Api::V1::ItemsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
  end

end
