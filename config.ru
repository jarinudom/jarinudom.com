# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

Sass::Plugin.options[:template_location] = "./app/stylesheets"

run JarinudomCom::Application
