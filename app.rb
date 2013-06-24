require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

post '/mac/on' do
  system 'wakeonlan 10:9a:dd:60:b2:cc'
end

