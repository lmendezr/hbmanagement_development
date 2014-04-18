json.array!(@areas) do |area|
  json.extract! area, :id, :nombre, :proyecto_id
  json.url area_url(area, format: :json)
end
