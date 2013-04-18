#!/usr/bin/env ruby
#
# do a slow read
#
#
require 'socket'

host = 'stats.dougsko.com'
port = 80
uri = '/cpu/images/cpu-1d.png'

request = "GET #{uri} HTTP/1.1\r\n"
request << "User-Agent: SlowReader\r\n"
request << "Accept: */*\r\n"
request << "Host: " + host + "\r\n"
request << "Connection: Keep-Alive\r\n"
request << "\r\n"

threads = []
1000.times do
	t = Thread.new do
		#s = TCPSocket.open(host, port)
		s = Socket.new(:AF_INET, :SOCK_STREAM, 0 )
		s.setsockopt(:SOCKET, :RCVBUF, 10)
		s.connect(Socket.pack_sockaddr_in(port, host))
		#puts s.getsockopt(:SOCKET, :RCVBUF).unpack("i")[0]
		s.write(request)
		while response = s.recv(5)
			sleep 5
		end
		s.close
	end
	threads << t
end

more = []
100.times do
	t = Thread.new do
		threads.each do |t|
			t.join
		end
	end
	more << t
end
more.each do |t|
	t.join
	sleep 1
end
