require 'test_helper'

class PlantsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get plants_show_url
    assert_response :success
  end

end
