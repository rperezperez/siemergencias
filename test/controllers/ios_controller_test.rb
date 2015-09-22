require 'test_helper'

class IosControllerTest < ActionController::TestCase
  setup do
    @io = ios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create io" do
    assert_difference('Io.count') do
      post :create, io: { device_token: @io.device_token, dispositivo_id: @io.dispositivo_id }
    end

    assert_redirected_to io_path(assigns(:io))
  end

  test "should show io" do
    get :show, id: @io
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @io
    assert_response :success
  end

  test "should update io" do
    patch :update, id: @io, io: { device_token: @io.device_token, dispositivo_id: @io.dispositivo_id }
    assert_redirected_to io_path(assigns(:io))
  end

  test "should destroy io" do
    assert_difference('Io.count', -1) do
      delete :destroy, id: @io
    end

    assert_redirected_to ios_path
  end
end
