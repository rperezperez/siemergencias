require 'test_helper'

class PoblacionsControllerTest < ActionController::TestCase
  setup do
    @poblacion = poblacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poblacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poblacion" do
    assert_difference('Poblacion.count') do
      post :create, poblacion: { centro_id: @poblacion.centro_id, codigo: @poblacion.codigo, epes: @poblacion.epes, gc: @poblacion.gc, nombre: @poblacion.nombre, pl: @poblacion.pl }
    end

    assert_redirected_to poblacion_path(assigns(:poblacion))
  end

  test "should show poblacion" do
    get :show, id: @poblacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poblacion
    assert_response :success
  end

  test "should update poblacion" do
    patch :update, id: @poblacion, poblacion: { centro_id: @poblacion.centro_id, codigo: @poblacion.codigo, epes: @poblacion.epes, gc: @poblacion.gc, nombre: @poblacion.nombre, pl: @poblacion.pl }
    assert_redirected_to poblacion_path(assigns(:poblacion))
  end

  test "should destroy poblacion" do
    assert_difference('Poblacion.count', -1) do
      delete :destroy, id: @poblacion
    end

    assert_redirected_to poblacions_path
  end
end
