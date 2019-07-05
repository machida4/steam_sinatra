require 'rubygems'
require 'bundler'

Bundler.require

set :database, {adapter: "sqlite3", database: "games.sqlite3"}

class Game < ActiveRecord::Base
  validates_presence_of :name
end

get '/' do
  "Hello, world!"
end