require 'test_helper'

class TareasControllerTest < ActionController::TestCase
  setup do
    @tarea = tareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tarea" do
    assert_difference('Tarea.count') do
      post :create, tarea: { componente_id: @tarea.componente_id, duracion_dias: @tarea.duracion_dias, duracion_selec: @tarea.duracion_selec, expiracion_dias: @tarea.expiracion_dias, expiracion_selec: @tarea.expiracion_selec, expirada: @tarea.expirada, fecha_de_continuidad: @tarea.fecha_de_continuidad, fecha_de_inicio: @tarea.fecha_de_inicio, finalizada: @tarea.finalizada, nombre: @tarea.nombre }
    end

    assert_redirected_to tarea_path(assigns(:tarea))
  end

  test "should show tarea" do
    get :show, id: @tarea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tarea
    assert_response :success
  end

  test "should update tarea" do
    patch :update, id: @tarea, tarea: { componente_id: @tarea.componente_id, duracion_dias: @tarea.duracion_dias, duracion_selec: @tarea.duracion_selec, expiracion_dias: @tarea.expiracion_dias, expiracion_selec: @tarea.expiracion_selec, expirada: @tarea.expirada, fecha_de_continuidad: @tarea.fecha_de_continuidad, fecha_de_inicio: @tarea.fecha_de_inicio, finalizada: @tarea.finalizada, nombre: @tarea.nombre }
    assert_redirected_to tarea_path(assigns(:tarea))
  end

  test "should destroy tarea" do
    assert_difference('Tarea.count', -1) do
      delete :destroy, id: @tarea
    end

    assert_redirected_to tareas_path
  end
end
