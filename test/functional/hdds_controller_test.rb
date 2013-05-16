require 'test_helper'

class HddsControllerTest < ActionController::TestCase
  setup do
    @hdd = hdds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hdds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hdd" do
    assert_difference('Hdd.count') do
      post :create, hdd: {  }
    end

    assert_redirected_to hdd_path(assigns(:hdd))
  end

  test "should show hdd" do
    get :show, id: @hdd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hdd
    assert_response :success
  end

  test "should update hdd" do
    put :update, id: @hdd, hdd: {  }
    assert_redirected_to hdd_path(assigns(:hdd))
  end

  test "should destroy hdd" do
    assert_difference('Hdd.count', -1) do
      delete :destroy, id: @hdd
    end

    assert_redirected_to hdds_path
  end
end
