json.array!(@save_credentials) do |save_credential|
  json.extract! save_credential, :id
  json.url save_credential_url(save_credential, format: :json)
end
