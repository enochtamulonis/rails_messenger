json.users do
  json.array!(@users) do |user|
    json.name user.email
    json.username user.username
    json.url pages_signed_in_home_path
  end
end
