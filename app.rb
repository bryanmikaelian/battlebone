require 'rubygems'
require 'sinatra'
require 'haml'
require './lib/battle_bone'

# Helpers
require './lib/render_partial'

# Set Sinatra variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public_folder, 'public'
set :haml, {:format => :html5} # default Haml format is :xhtml
set :region, :us
set :client, BattleBone::API.new(settings.region)

# Application routes
get '/' do
  haml :index, :layout => :'layouts/application'
end

##############
# API - Achievements
##############

get '/api/achievements/?' do
  return 404
end

get '/api/achievements/:id' do
  settings.client.achievement(params[:id])
end

##############
# API - Realms
##############
get '/api/realms/?' do
  settings.client.realms
end

get '/api/realms/:id' do
  return if params[:id].to_i < 1
  settings.client.realm(params[:id])
end
