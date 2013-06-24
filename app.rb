require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

post '/mac/on' do
  system 'wakeonlan -i 192.168.9.1 10:9a:dd:60:b2:cc'
end

