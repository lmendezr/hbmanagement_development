json.array!(@secciones) do |seccione|
  json.extract! seccione, :id, :nombre, :porciento_obtenido, :area_id
  json.url seccione_url(seccione, format: :json)
end
