json.array!(@signups) do |signup|
  json.extract! signup, :name, :email_id, :password
  json.url signup_url(signup, format: :json)
end
