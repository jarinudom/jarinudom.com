require 'rails'

module HassleRails
  class Railtie < Rails::Railtie
    initializer :after_initialize do
      require 'rack'
      require 'sass'
      require 'sass/plugin'
      Rails.configuration.middleware.use Hassle
    end
  end
end
