json.array!(@componentes) do |componente|
  json.extract! componente, :id, :nombre, :descripcion, :puntuaje_obtenido, :fecha_de_inicio, :fecha_de_continuidad, :duracion_selec, :duracion_dias, :finalizada, :expiracion_selec, :expiracion_dias, :expirada, :seccione_id
  json.url componente_url(componente, format: :json)
end
