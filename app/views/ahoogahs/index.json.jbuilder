json.array!(@ahoogahs) do |ahoogah|
  json.extract! ahoogah, :id, :License, :State, :Comment, :Tag1, :Tag2, :Tag3
  json.url ahoogah_url(ahoogah, format: :json)
end
