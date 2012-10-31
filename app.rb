require 'rubygems'
require 'sinatra'
require 'logger'
require 'sinatra/reloader'
require 'haml'
require 'sass'
require 'compass'
require 'coffee-script'

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views'
  end
  set :sass, Compass.sass_engine_options
end

get '/' do
  haml :index
end

get '/app.css' do
  sass :app
end

get '/app.js' do
  coffee :app
end
