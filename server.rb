require 'socket'

server = TCPServer.open('localhost', 2000)

loop {
  puts 'waiting for connection..'
  client = server.accept
  client.puts(Time.now.ctime)
  client.puts "Connection closed!"
  puts 'connection closed'
  p client
  client.close
}

