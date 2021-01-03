-------------------------------------------------------------------
 -- Copyright (C) 2021 LvChengbin
 --
 -- File: .hammerspoon/hammerspoon-config-reload.lua
 -- Author: LvChengbin<lvchengbin59@gmail.com>
 -- Time: 01/03/2021
 -- Description:
--------------------------------------------------------------------

 hs.hotkey.bind( { 'cmd', 'ctrl' }, 'R', function()
     hs.reload()
 end )
 hs.alert.show( 'Hammerspoon config reloaded' )
