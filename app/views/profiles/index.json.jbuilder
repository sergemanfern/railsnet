json.array!(@profiles) do |profile|
  json.extract! profile, :id, :login, :password, :name, :surname, :birth, :status, :about
  json.url profile_url(profile, format: :json)
end
