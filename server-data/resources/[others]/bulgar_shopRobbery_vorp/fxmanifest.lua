fx_version "adamant"

games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

author 'BulgaR' -- https://discord.gg/dcyY2e5kb3
description 'BulgaR shopRobbery VORP'
version '1.4'

escrow_ignore {
	'config.lua',
	'cl_main.lua',
	'html/index.html',
	'html/script.js',
	'html/TweenMax.min.js',
	"html/style.css",
	"html/jquery.min.js",
	'html/collar.png',
	'html/cylinder.png',
	'html/driver.png',
	'html/pinBott.png',
	'html/pinTop.png'
}

ui_page('html/index.html')

files({
	'html/index.html',
	'html/script.js',
	'html/TweenMax.min.js',
	"html/style.css",
	"html/jquery.min.js",
	'html/collar.png',
	'html/cylinder.png',
	'html/driver.png',
	'html/pinBott.png',
	'html/pinTop.png'
})

client_scripts {
	'config.lua',
	'cl_main.lua',
	'cl_witness.lua',
	'cl_lockpick.lua'
}

server_scripts {
	'config.lua',
	'sv_main.lua'	
}
dependency '/assetpacks'