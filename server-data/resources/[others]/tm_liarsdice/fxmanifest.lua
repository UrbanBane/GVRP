fx_version "adamant"

games { 'rdr3' }

author '@turbomodus'
description 'liars dice script inspired by RDR'
version '1.0-h1'
lua54 'yes'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

-- Client Scripts
client_scripts {
    'config.lua',
    'client/utils-c.lua',
    'client/objects-c.lua',
    'client/animations-c.lua',
    'client/cams-c.lua',
    'client/main-c.lua'
} 

-- Server Scripts
server_scripts {
    'config.lua',
    'server/util-s.lua',
    'server/objects-s.lua',
    'server/main-s.lua',
    'server/command-s.lua',
    'server/compatibility.lua'
} 

-- html
ui_page 'html/index.html'
files {
    'html/index.html',
    'html/reset.css',
    'html/style.css',
    'html/audio/*.mp3',
    'html/img/*.png',
    'html/img/dices/dices_1/*.png',
    'html/main.js'
}

escrow_ignore {
    'config.lua', 
    'server/compatibility.lua', 
}
dependency '/assetpacks'