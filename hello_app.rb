require 'sinatra'

DAYNAMES = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
get '/' do
  dayname = DAYNAMES[Time.now.wday]
end; get '/hello' do
  'hello, world!'
end
