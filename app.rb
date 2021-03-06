require 'sinatra'
require 'haml'
require 'serialport'

get '/' do
  haml :index
end

post '/mac/on' do
  system 'wakeonlan -i 192.168.9.1 10:9a:dd:60:b2:cc'
end

# remote control
$port = SerialPort.new '/dev/ttyUSB0',9600
post '/ceil/on' do
  3.times { $port.write("a\r\n"); sleep 0.1; $port.flush }
end

post '/ceil/off' do
  3.times { $port.write("b\r\n"); sleep 0.1; $port.flush }
end

post '/ceil/night' do
  3.times { $port.write("c\r\n"); sleep 0.1; $port.flush }
end

