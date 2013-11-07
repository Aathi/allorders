json.array!(@registers) do |register|
  json.extract! register, :username, :encrypted_password, :email_id
  json.url register_url(register, format: :json)
end
