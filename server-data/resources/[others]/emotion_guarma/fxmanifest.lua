fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game "rdr3"
lua54 'yes'

author 'Emotion'
description 'Guarma Script'
version '1.0.1'


server_scripts {
    'server/server.lua',
}

client_scripts {
	'client/client.lua',
}

shared_scripts {
	'config.lua',
    'shared/locale.lua',
    'languages/*.lua',
}
