author "kad Darem : store.kaddarem.com"
description "Stop steal horse of player/npc"
version '1.0.0'

fx_version "adamant"

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game "rdr3"
lua54 'yes'

escrow_ignore {
  'config.lua',
  'lang.lua'
}

client_scripts {
  'client/client.lua',
  'client/dataview.lua'
}

server_scripts {
  'server/server.lua'
}

shared_script {
  "client/native.lua",
  'config.lua',
  'lang.lua',
}
dependency '/assetpacks'