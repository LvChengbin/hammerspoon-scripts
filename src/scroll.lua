-------------------------------------------------------------------
 -- Copyright (C) 2021 LvChengbin
 --
 -- File: .hammerspoon/scroll.lua
 -- Author: LvChengbin<lvchengbin59@gmail.com>
 -- Time: 01/03/2021
 -- Description:
--------------------------------------------------------------------

 
function scroll( direction )
    hs.eventtap.keyStroke( {}, direction )
end

interval = 0.05

scrollupTimer = hs.timer.new( interval, function() scroll( 'down' ) end )
scrolldownTimer = hs.timer.new( interval, function() scroll( 'up' ) end )

hs.hotkey.bind(
    { 'cmd', 'ctrl' }, 'J',
    function() scrollupTimer:start() end,
    function() scrollupTimer:stop() end
)

hs.hotkey.bind(
    { 'cmd', 'ctrl' }, 'K',
    function() scrolldownTimer:start() end,
    function() scrolldownTimer:stop() end
)
