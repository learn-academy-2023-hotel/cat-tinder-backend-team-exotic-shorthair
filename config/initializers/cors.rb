# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3001'  # <- change this to allow requests from any domain while in development.
  
      resource '*',
        headers: ["Authorization"],
        expose: ["Authorization"],
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        max_age: 600
    end
  end