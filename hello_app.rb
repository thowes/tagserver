require 'sinatra'

DAYNAMES = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
get '/' do
end; get '/hello' do
  'hello, world!'
end
