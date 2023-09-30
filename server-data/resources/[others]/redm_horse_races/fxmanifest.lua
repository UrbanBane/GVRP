
fx_version 'cerulean'
game 'rdr3'
lua54 'yes'

author 'xK3LY'
version '1.0.0'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

shared_scripts {
    'shared/utils.lua'
}

server_scripts {
    'config.lua',
    'server/main.lua',
    'server/commands.lua'
}

client_scripts {
    'config.lua',
    'client/structs.js',
    'client/utils.lua',
    'client/main.lua'
}

escrow_ignore {
  	'config.lua'
}
dependency '/assetpacks'