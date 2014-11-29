# coding: utf-8
require 'sinatra/base'

#
class App < Sinatra::Base
  get '/' do
    'Helloooo'
  end
end
