OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '810244926764-b3s4obb9f7cne5jd19c4cpi03jlelqt4.apps.googleusercontent.com', 'yPFdYYAcyk6GESfEU0ghy4YL', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}


end
