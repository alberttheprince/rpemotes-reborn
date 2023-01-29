--- Maintained by TayMcKenzieNZ ---
--- Check for updates at https://github.com/TayMcKenzieNZ/rpemotes ---

fx_version 'cerulean'
game 'gta5'
version '1.1.3'
lua54 'yes'

dependencies {
    '/server:5848',
    '/onesync',
}

-- Remove the following lines if you would like to use the SQL keybinds. Requires oxmysql.

--#region oxmysql

-- dependency 'oxmysql'
-- server_script '@oxmysql/lib/MySQL.lua'

--#endregion oxmysql

shared_scripts {
    'config.lua',
    'Translations.lua'
}

server_scripts {
    'printer.lua',
    'server/Server.lua',
    'server/Updates.lua',
    'server/frameworks/*.lua'
}

client_scripts {
    'NativeUI.lua',
    'client/AnimationList.lua',
    'client/AnimationListCustom.lua',
    'client/Crouch.lua',
    'client/Emote.lua',
    'client/EmoteMenu.lua',
    'client/Keybinds.lua',
    'client/Pointing.lua',
    'client/Ragdoll.lua',
    'client/Syncing.lua',
    'client/Walk.lua',
    'client/frameworks/*.lua'
}


---- Loads all ytyp files for custom props to stream ---

data_file 'DLC_ITYP_REQUEST' '*.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/*.ytyp'

