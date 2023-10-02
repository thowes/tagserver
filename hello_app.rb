require 'sinatra'
require './day'


get '/' do
  greeting(Time.now)
end

get '/goodbye' do
  'goodbye, world!'
end

get '/hello' do
  'hello, world!'
end
