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
  settings.client.realm(params[:id])
end

get '/api/realms/:id/auction/?' do
  settings.client.realm_auction
end

get '/api/realms/:id/auction/info/?' do
  settings.client.realm_auction_info(params[:id])
end

# TODO: This end point is slow.  Cache it.
get '/api/realms/:id/auction/data/?' do
  settings.client.realm_auction_show_data(params[:id])
end

get '/api/realms/:id/character/?' do
  settings.client.realm_character(params)
end

##############
# API - Items
##############
get '/api/items/?' do
  settings.client.items
end

get '/api/items/:id' do
  settings.client.item(params[:id])
end
