json.array!(@tareas) do |tarea|
  json.extract! tarea, :id, :nombre, :fecha_de_inicio, :fecha_de_continuidad, :duracion_selec, :duracion_dias, :finalizada, :expiracion_selec, :expiracion_dias, :expirada, :componente_id
  json.url tarea_url(tarea, format: :json)
end
