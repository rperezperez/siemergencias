require 'test_helper'

class LogOperadorVirtualsControllerTest < ActionController::TestCase
  setup do
    @log_operador_virtual = log_operador_virtuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_operador_virtuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_operador_virtual" do
    assert_difference('LogOperadorVirtual.count') do
      post :create, log_operador_virtual: { fecha: @log_operador_virtual.fecha, mensaje: @log_operador_virtual.mensaje, operador_virtual_id: @log_operador_virtual.operador_virtual_id, tipo: @log_operador_virtual.tipo }
    end

    assert_redirected_to log_operador_virtual_path(assigns(:log_operador_virtual))
  end

  test "should show log_operador_virtual" do
    get :show, id: @log_operador_virtual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @log_operador_virtual
    assert_response :success
  end

  test "should update log_operador_virtual" do
    patch :update, id: @log_operador_virtual, log_operador_virtual: { fecha: @log_operador_virtual.fecha, mensaje: @log_operador_virtual.mensaje, operador_virtual_id: @log_operador_virtual.operador_virtual_id, tipo: @log_operador_virtual.tipo }
    assert_redirected_to log_operador_virtual_path(assigns(:log_operador_virtual))
  end

  test "should destroy log_operador_virtual" do
    assert_difference('LogOperadorVirtual.count', -1) do
      delete :destroy, id: @log_operador_virtual
    end

    assert_redirected_to log_operador_virtuals_path
  end
end
