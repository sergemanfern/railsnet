json.array!(@homepages) do |homepage|
  json.extract! homepage, :id, :name, :surname, :birthday, :status, :about
  json.url homepage_url(homepage, format: :json)
end
