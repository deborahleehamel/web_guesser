require 'sinatra'
require 'sinatra/reloader'

# get '/' do
#   "Hello, World!"
# end
secret_number = rand(10)

get '/' do
  "The SECRET NUMBER is #{secret_number}"
end
