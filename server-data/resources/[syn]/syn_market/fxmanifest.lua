fx_version 'adamant'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'
shared_scripts {
	'config.lua',
	'functions.lua'
}

client_scripts {
	'client.lua',
}

server_scripts {
	'server.lua'
}

escrow_ignore {
	'config.lua',
	'client.lua'
}
dependency '/assetpacks'