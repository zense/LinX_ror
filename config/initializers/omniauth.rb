OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '431971058880-l474ciq243i25s0hq8eoicc99s50unf5.apps.googleusercontent.com', 'YyYIcRlziv25gIQWuqBY83bf', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}


end
