#!/usr/bin/env ruby
$LOAD_PATH << './lib'
require 'rubygems'
require 'sinatra'

configure do
  enable :sessions

  set :public_folder, Proc.new { File.join(root, "static") }
end

get '/' do
  haml :index 
end
