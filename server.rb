require 'socket'

server = TCPServer.open(2000)

connection = server.accept
msg_count = 0
while input = connection.gets
  puts input

  if (msg_count += 1) == 3
    connection.close
  end
end
