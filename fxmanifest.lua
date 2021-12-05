--- DPEmotes by andristum ---
--- Forked by TayMcKenzieNZ ---
--- Check for updates at https://github.com/TayMcKenzieNZ/dpemotes ---


fx_version 'adamant'

game 'gta5'

-- Comment this out if you don't want to use the SQL keybinds
-- dependency 'ghmattimysql'

client_scripts {
	'NativeUI.lua',
	'Config.lua',
	'Client/*.lua'
}

server_scripts {
	'Config.lua',
	'Server/*.lua'
}


server_script 'printer.lua'
