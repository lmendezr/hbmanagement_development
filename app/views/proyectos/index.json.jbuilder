json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :id, :nombre, :nombre_gerente
  json.url proyecto_url(proyecto, format: :json)
end
