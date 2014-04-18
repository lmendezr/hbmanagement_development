require 'test_helper'

class SeccionesControllerTest < ActionController::TestCase
  setup do
    @seccione = secciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seccione" do
    assert_difference('Seccione.count') do
      post :create, seccione: { area_id: @seccione.area_id, nombre: @seccione.nombre, porciento_obtenido: @seccione.porciento_obtenido }
    end

    assert_redirected_to seccione_path(assigns(:seccione))
  end

  test "should show seccione" do
    get :show, id: @seccione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seccione
    assert_response :success
  end

  test "should update seccione" do
    patch :update, id: @seccione, seccione: { area_id: @seccione.area_id, nombre: @seccione.nombre, porciento_obtenido: @seccione.porciento_obtenido }
    assert_redirected_to seccione_path(assigns(:seccione))
  end

  test "should destroy seccione" do
    assert_difference('Seccione.count', -1) do
      delete :destroy, id: @seccione
    end

    assert_redirected_to secciones_path
  end
end
