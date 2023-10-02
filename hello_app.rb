require 'sinatra'
require './day'


get '/' do
  "Hello, world! Happy #{day_of_the_week(Time.now)}—now from a file!"
end

get '/goodbye' do
  'goodbye, world!'
end

get '/hello' do
  'hello, world!'
end
