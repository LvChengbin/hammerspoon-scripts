-------------------------------------------------------------------
 -- Copyright (C) 2021 LvChengbin
 --
 -- File: init.lua
 -- Author: LvChengbin<lvchengbin59@gmail.com>
 -- Time: 01/03/2021
 -- Description:
--------------------------------------------------------------------

package.path = debug.getinfo( 1, 'S' ).source:match[[^@?(.*[\/])[^\/]-$]] .. 'src/?.lua;' .. package.path

-- require( 'lock-internal-keyboard' )
require( 'hammerspoon-config-reload' )
require( 'scroll' )
require( 'control-escape' )
