require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Message what I wrote"
end

get '/cat' do
  "<div>
    <img src='http://bit.ly/1eze8aE'>
  </div>"
end
