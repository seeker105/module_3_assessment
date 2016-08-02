require "test_helper"

class BestBuyControllerTest < ActionController::TestCase
  def test_search
    get :search
    assert_response :success
  end

end
