Before('@facebook_auth') do
  OmniAuth.config.test_mode = true

  OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
    provider: "facebook",
    uid: "123545",
    info: {"name"=>"Test User"}
  })
end

Before('@facebook_auth_fail') do
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:facebook] = :invalid_credentials
end

After('@facebook_auth', '@facebook_auth_fail') do
  OmniAuth.config.test_mode = false
end