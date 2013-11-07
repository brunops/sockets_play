require 'socket'

begin
  clientSession = TCPSocket.new 'localhost', 2000

  while !(clientSession.closed?)
    print 'Enter message: '
    msg = gets
    clientSession.puts msg
  end
rescue StandardError => bang
  puts 'ERROR!'
  p bang
end
