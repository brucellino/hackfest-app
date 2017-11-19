require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should_get_home" do
      get '/pages/home'
      assert_response :success
  end

  # A default route should be specified
  test "should_get_root" do
    get '/'
    assert_response :success
  end
end
