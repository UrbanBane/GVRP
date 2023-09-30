server_scripts {
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'config.lua',
	'client/main.lua'
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
'html/pinTop.png',

})

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

fx_version "adamant"

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game "rdr3"

export "lockpick"