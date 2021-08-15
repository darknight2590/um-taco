fx_version 'cerulean'
game 'gta5'

author 'uyuyorum'
description 'qb-core | um-taco by uyuyorum '
version '1.0.0'


shared_script { 
	'@qb-core/import.lua',
	'config.lua'
}

client_script {
	'client/client.lua'
}

server_script {
	'server/server.lua'
}

dependencies {
	'qb-core'
}