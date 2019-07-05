require 'rubygems'
require 'bundler'

Bundler.require

set :database, {adapter: "sqlite3", database: "games.sqlite3"}
enable :sessions

class Game < ActiveRecord::Base
  validates_presence_of :name
end

File.open("keys/apikey.txt") { |f| Steam.apikey = f.gets }

get '/' do
  erb :index
end

get '/data' do
  Game.destroy_all
  File.open("keys/steamid.txt") { |f| @steam_id = f.gets }
  data = Steam::Player.recently_played_games(@steam_id)["games"]
  data.each do |d|
    game = Game.new(name: d["name"], appid: d["appid"], playtime_2weeks: d["playtime_2weeks"])
    game.save
  end
  @contents = Game.all
  erb :data
end

post '/user' do
  steam_id = params[:steam_id]
  File.open("keys/steamid.txt", "w") { |f| f.puts(steam_id) }
  redirect '/data'
end

# get '/refresh' do
#   Game.destroy_all
#   File.open("keys/steamid.txt") { |f| @steam_id = f.gets }
#   data = Steam::Player.recently_played_games(@steam_id)["games"]
#   data.each do |d|
#     game = Game.new(name: d["name"], appid: d["appid"], playtime_2weeks: d["playtime_2weeks"])
#     game.save
#   end
#   redirect '/data'
# end