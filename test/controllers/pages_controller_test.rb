require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get lienhe" do
    get :lienhe
    assert_response :success
  end

  test "should get video" do
    get :video
    assert_response :success
  end

end
