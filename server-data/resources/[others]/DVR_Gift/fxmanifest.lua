fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

this_is_a_map "yes"
lua54 "yes"

ui_page "index.html"

files({
	"index.html",
	'xmas.mp3',
})

client_scripts {
	'not.js',
	'config.lua',
	'client/*.lua',
}

server_scripts {
	'config.lua',
	'server/*.lua',
}

escrow_ignore {
	"index.html",
	'xmas.mp3',
	'config.lua',
}

dependency '/assetpacks'