require 'test_helper'

class CentroUsuariosControllerTest < ActionController::TestCase
  setup do
    @centro_usuario = centro_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centro_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create centro_usuario" do
    assert_difference('CentroUsuario.count') do
      post :create, centro_usuario: { centro_id: @centro_usuario.centro_id, rol: @centro_usuario.rol, usuario_id: @centro_usuario.usuario_id }
    end

    assert_redirected_to centro_usuario_path(assigns(:centro_usuario))
  end

  test "should show centro_usuario" do
    get :show, id: @centro_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @centro_usuario
    assert_response :success
  end

  test "should update centro_usuario" do
    patch :update, id: @centro_usuario, centro_usuario: { centro_id: @centro_usuario.centro_id, rol: @centro_usuario.rol, usuario_id: @centro_usuario.usuario_id }
    assert_redirected_to centro_usuario_path(assigns(:centro_usuario))
  end

  test "should destroy centro_usuario" do
    assert_difference('CentroUsuario.count', -1) do
      delete :destroy, id: @centro_usuario
    end

    assert_redirected_to centro_usuarios_path
  end
end
