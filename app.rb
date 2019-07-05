require 'sinatra'
require 'sinatra/reloader'

require 'rubygems'
require 'bundler'

Bundler.require

get '/' do
  "Hello, world!"
end