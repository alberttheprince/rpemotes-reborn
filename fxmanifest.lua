fx_version 'cerulean'
game 'gta5'
description 'rpemotes-reborn'
version '1.6.1'

lua54 'yes'
use_experimental_fxv2_oal 'yes'

provide "rpemotes"

dependencies{
    -- '/server:7290',
    '/server:6683',
    '/onesync'
}

-- Remove the following lines if you would like to use the SQL keybinds. Requires oxmysql.
--#region oxmysql
-- dependency 'oxmysql'
-- server_script '@oxmysql/lib/MySQL.lua'
--#endregion oxmysql
files{
    'propsets.meta',
    'conditionalanims.meta',
    'header.png'
}

data_file 'AMBIENT_PROP_MODEL_SET_FILE' 'propsets.meta'
data_file 'CONDITIONAL_ANIMS_FILE' 'conditionalanims.meta'

shared_scripts{
    'config.lua',
    'locale.lua',
    'locales/*.lua',
    'animals.lua'
}

server_scripts{
    'server/Server.lua',
    'server/Updates.lua',
    'server/frameworks/*.lua'
}

client_scripts{
    'NativeUI.lua',
    'client/Utils.lua',
    'client/AnimationList.lua',
    'client/AnimationListCustom.lua',
    'client/Binoculars.lua',
    'client/Crouch.lua',
    'client/Emote.lua',
    'client/EmoteMenu.lua',
    'client/Expressions.lua',
    'client/Keybinds.lua',
    'client/NewsCam.lua',
    'client/NoIdleCam.lua',
    'client/Pointing.lua',
    'client/Ragdoll.lua',
    'client/Syncing.lua',
    'client/Walk.lua',
    'client/frameworks/*.lua'
}

---- Loads all ytyp files for custom props to stream ---
---- You will need to add a data_file 'DLC_ITYP_REQUEST' for your own to work in game ---
data_file 'DLC_ITYP_REQUEST' 'stream/taymckenzienz_rpemotes.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/brummie_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_camp_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/apple_1.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/kaykaymods_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/knjgh_pizzas.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/natty_props_lollipops.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/ultra_ringcase.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/pata_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/vedere_props.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/pnwsigns.ytyp'

data_file 'DLC_ITYP_REQUEST' 'stream/pprp_icefishing.ytyp'

data_file 'DLC_ITYP_REQUEST' 'scully_props.ytyp'
