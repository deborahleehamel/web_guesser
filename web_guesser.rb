require 'sinatra'
require 'sinatra/reloader'


# get '/' do
#   "Hello, World!"
# end
NUMBER = rand(10)
bg_color = "FFFFFF"

get '/' do
  guess = params["guess"]
  bg_color, message = check_guess(guess)
  erb :index, :locals => {:number => NUMBER, :message => message, :bg_color => bg_color}
end


def check_guess(guess)
  if params["guess"].to_i > NUMBER + 5
    ["FF0000", "Way too high!"]
  elsif params["guess"].to_i > NUMBER
    ["F5A9A9", "Too high!"]
  elsif params["guess"].to_i < NUMBER - 5
    ["FF0000","Way too low!"]
  elsif params["guess"].to_i < NUMBER
    ["F5A9A9", "Too low!"]
  else
    ["01DF01", "You got it right!"]
  end
end
