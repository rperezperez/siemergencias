require 'test_helper'

class TetrasControllerTest < ActionController::TestCase
  setup do
    @tetra = tetras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tetras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tetra" do
    assert_difference('Tetra.count') do
      post :create, tetra: { dispositivo_id: @tetra.dispositivo_id, issi: @tetra.issi }
    end

    assert_redirected_to tetra_path(assigns(:tetra))
  end

  test "should show tetra" do
    get :show, id: @tetra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tetra
    assert_response :success
  end

  test "should update tetra" do
    patch :update, id: @tetra, tetra: { dispositivo_id: @tetra.dispositivo_id, issi: @tetra.issi }
    assert_redirected_to tetra_path(assigns(:tetra))
  end

  test "should destroy tetra" do
    assert_difference('Tetra.count', -1) do
      delete :destroy, id: @tetra
    end

    assert_redirected_to tetras_path
  end
end
