fx_version 'adamant'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'
shared_scripts {
	'config/config.lua',
	'config/kill.lua',
	'config/arrest.lua',
	'config/escort.lua',
	'functions.lua'
}

client_scripts {
	'client.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server.lua'
}

ui_page "html/index.html"

files {
	'html/index.html',
	'html/script.js',
	'html/style.css',
	'html/img/*',
}

escrow_ignore {
	'fxmanifest - redem.lua',
	'functions.lua',
	'config/*.lua',
	'client.lua',
	'html/*.html',
	'html/*.js',
	'html/*.css',
	'html/img/*.png',
}