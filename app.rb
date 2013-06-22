#!/usr/bin/env ruby
$LOAD_PATH << './lib'
require 'rubygems'
require 'sinatra'

get '/' do
  'hello world'
end
