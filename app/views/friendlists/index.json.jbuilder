json.array!(@friendlists) do |friendlist|
  json.extract! friendlist, :id, :name, :surname, :status
  json.url friendlist_url(friendlist, format: :json)
end
