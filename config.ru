ENV['RACK_ENV'] = 'production'

require ::File.expand_path('../main',  __FILE__)

run Sinatra::Application
