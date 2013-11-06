json.array!(@signups) do |signup|
  json.extract! signup, :first_Name, :last_name, :email_id, :username, :password
  json.url signup_url(signup, format: :json)
end
