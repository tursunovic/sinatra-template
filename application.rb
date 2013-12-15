require 'bundler/setup'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/asset_pipeline'

# SQLite
set :database, "sqlite3:///application.db"
set :protection, :except => :frame_options

register Sinatra::AssetPipeline

get '/' do 
  erb :index
end

error 404 do 
  # Handle 404
end

error 500 do 
  # Handle 500
end