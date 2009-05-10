require 'test_helper'

class HospitalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital" do
    assert_difference('Hospital.count') do
      post :create, :hospital => {:full_name => "Test Full Name", :phone => "Test Phone", :address => "Test Address", :image => "Test.jpg", :email => "test@test.com"}
    end

    assert_redirected_to hospital_path(assigns(:hospital))
  end

  test "should show hospital" do
    get :show, :id => hospitals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hospitals(:one).to_param
    assert_response :success
  end

  test "should update hospital" do
    put :update, :id => hospitals(:one).id,
      :hospital => {:full_name => "Test Full Name Update", :short_name => "", :phone => "Test Phone Update", :address => "Test Address Update", :image => "TestUpdate.jpg", :email => "test@test.com"}
    assert_redirected_to hospital_path(assigns(:hospital))
  end

  test "should destroy hospital" do
    assert_difference('Hospital.count', -1) do
      delete :destroy, :id => hospitals(:one).to_param
    end

    assert_redirected_to hospitals_path
  end
end
