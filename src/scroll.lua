-------------------------------------------------------------------
 -- Copyright (C) 2021 LvChengbin
 --
 -- File: .hammerspoon/scroll.lua
 -- Author: LvChengbin<lvchengbin59@gmail.com>
 -- Time: 01/03/2021
 -- Description:
 -------------------------------------------------------------------

hs.hotkey.bind( { 'cmd', 'ctrl' }, 'J', nil, function()
    hs.eventtap.keyStroke( {}, 'down' )
end )

hs.hotkey.bind( { 'cmd', 'ctrl' }, 'K', function()
    hs.eventtap.keyStroke( {}, 'up' )
end )
