require 'sinatra'

DAYNAMES = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
# Returns the day of the week for the given Time object.
def day_of_the_week(time)
  Date::DAYNAMES[time.wday]
end

get '/' do
  dayname = DAYNAMES[Time.now.wday]
  "Hello, world! Happy #{day_of_the_week(Time.now)}."
end

get '/goodbye' do
  'goodbye, world!'
end

get '/hello' do
  'hello, world!'
end
