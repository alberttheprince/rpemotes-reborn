--- DPEmotes by andristum ---
--- Forked by TayMcKenzieNZ ---
--- Check for updates at https://github.com/TayMcKenzieNZ/dpemotes ---

fx_version 'adamant'

game 'gta5'

-- Comment this out if you don't want to use the SQL keybinds
-- dependency 'oxmysql'

shared_scripts {
	'config.lua',
}

server_scripts {
	'printer.lua',
	'server/*.lua'
}

client_scripts {
	'NativeUI.lua',
	'client/*.lua'
}
