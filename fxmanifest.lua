--- DPEmotes by andristum ---
--- Forked by TayMcKenzieNZ ---
--- Check for updates at https://github.com/TayMcKenzieNZ/dpemotes ---

fx_version 'adamant'

game 'gta5'

-- Comment the following linnes if you don't want to use the SQL keybinds
--#region oxmysql
-- dependency 'oxmysql'
-- server_script "@oxmysql/lib/MySQL.lua"
--#endregion oxmysql

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


data_file "DLC_ITYP_REQUEST" "badge1.ytyp"

data_file "DLC_ITYP_REQUEST" "copbadge.ytyp"
