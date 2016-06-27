json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :number, :location, :email, :site, :telephone
  json.url club_url(club, format: :json)
end
