require 'test_helper'

class ChartsControllerTest < ActionDispatch::IntegrationTest
  test "should get house" do
    get charts_house_url
    assert_response :success
  end

end
