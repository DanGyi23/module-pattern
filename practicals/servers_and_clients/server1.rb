require 'socket'

server = TCPServer.new(2345)

socket = server.accept

while true do

  socket.puts "What do you say?"

  they_said = socket.gets.chomp

  socket.close if they_said == "quit"
    
  socket.puts "You said: #{they_said}!"

end