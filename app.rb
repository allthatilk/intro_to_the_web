require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Message what I wrote"
end

get '/random-cat' do
  @name = ["cat", "tiny cat", "small cat"].sample
  erb(:index)
end

get '/cat-naming-form' do
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
