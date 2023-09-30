
fx_version 'cerulean'
game 'rdr3'
lua54 'yes'

author 'xK3LY'
version '1.1.5'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

shared_scripts {
    'config.lua',
    'shared/utils.lua'
}

server_scripts {
    'config.lua',
    'server/main.lua'
}

client_scripts {
    'config.lua',
    'client/structs.js',
    'client/main.lua'
}

escrow_ignore {
  	'config.lua',
    'patches/vorp_inventory.lua'
}
dependency '/assetpacks'