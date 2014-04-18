require 'test_helper'

class ComponentesControllerTest < ActionController::TestCase
  setup do
    @componente = componentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:componentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create componente" do
    assert_difference('Componente.count') do
      post :create, componente: { descripcion: @componente.descripcion, duracion_dias: @componente.duracion_dias, duracion_selec: @componente.duracion_selec, expiracion_dias: @componente.expiracion_dias, expiracion_selec: @componente.expiracion_selec, expirada: @componente.expirada, fecha_de_continuidad: @componente.fecha_de_continuidad, fecha_de_inicio: @componente.fecha_de_inicio, finalizada: @componente.finalizada, nombre: @componente.nombre, puntuaje_obtenido: @componente.puntuaje_obtenido, seccione_id: @componente.seccione_id }
    end

    assert_redirected_to componente_path(assigns(:componente))
  end

  test "should show componente" do
    get :show, id: @componente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @componente
    assert_response :success
  end

  test "should update componente" do
    patch :update, id: @componente, componente: { descripcion: @componente.descripcion, duracion_dias: @componente.duracion_dias, duracion_selec: @componente.duracion_selec, expiracion_dias: @componente.expiracion_dias, expiracion_selec: @componente.expiracion_selec, expirada: @componente.expirada, fecha_de_continuidad: @componente.fecha_de_continuidad, fecha_de_inicio: @componente.fecha_de_inicio, finalizada: @componente.finalizada, nombre: @componente.nombre, puntuaje_obtenido: @componente.puntuaje_obtenido, seccione_id: @componente.seccione_id }
    assert_redirected_to componente_path(assigns(:componente))
  end

  test "should destroy componente" do
    assert_difference('Componente.count', -1) do
      delete :destroy, id: @componente
    end

    assert_redirected_to componentes_path
  end
end
