require 'test_helper'

class OperadorVirtualsControllerTest < ActionController::TestCase
  setup do
    @operador_virtual = operador_virtuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operador_virtuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operador_virtual" do
    assert_difference('OperadorVirtual.count') do
      post :create, operador_virtual: { descripcion: @operador_virtual.descripcion, user_id: @operador_virtual.user_id }
    end

    assert_redirected_to operador_virtual_path(assigns(:operador_virtual))
  end

  test "should show operador_virtual" do
    get :show, id: @operador_virtual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operador_virtual
    assert_response :success
  end

  test "should update operador_virtual" do
    patch :update, id: @operador_virtual, operador_virtual: { descripcion: @operador_virtual.descripcion, user_id: @operador_virtual.user_id }
    assert_redirected_to operador_virtual_path(assigns(:operador_virtual))
  end

  test "should destroy operador_virtual" do
    assert_difference('OperadorVirtual.count', -1) do
      delete :destroy, id: @operador_virtual
    end

    assert_redirected_to operador_virtuals_path
  end
end
