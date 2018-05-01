require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  # test 'the truth' do
  #   assert true
  # end
  test 'should_get_home' do
    get '/pages/home'
    assert_response :success
  end
end
