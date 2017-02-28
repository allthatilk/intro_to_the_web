require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Message what I wrote"
end

get '/cat' do
  erb(:index)
end
