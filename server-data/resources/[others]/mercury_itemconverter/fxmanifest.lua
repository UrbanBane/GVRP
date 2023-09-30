fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game "rdr3"
lua54 'yes'

server_scripts {
	'config.lua',
    'server.lua'
}

escrow_ignore {
	'config.lua',
	'fxmanifest.lua'
}
dependency '/assetpacks'