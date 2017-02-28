require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Message what I wrote"
end

get '/cat' do
  @name = ["cat", "tiny cat", "small cat"].sample
  erb(:index)
end
