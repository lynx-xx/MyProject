require 'test_helper'

class FacilityTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facility_types)
  end
end
