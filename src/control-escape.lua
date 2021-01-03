-------------------------------------------------------------------
 -- Copyright (C) 2021 LvChengbin
 --
 -- File: .hammerspoon/control-escape.lua
 -- Author: LvChengbin<lvchengbin59@gmail.com>
 -- Time: 01/03/2021
 -- Description: send ESC if CTRL is tapped without other keys
--------------------------------------------------------------------

send = false
prev = {}

timer = hs.timer.delayed.new( 0.15, function() send = false end );

hs.eventtap.new( { hs.eventtap.event.types.flagsChanged }, function( e )
    local modifiers = e:getFlags()

    -- make sure that the event will only be handled once
    if modifiers[ 'ctrl' ] == prev[ 'ctrl' ] then
        return false
    end

    if not prev[ 'ctrl' ] then
        prev = modifiers
        send = true
        timer:start()
    else
        if send then
            hs.eventtap.keyStroke( {}, 'ESCAPE' )
        end
        prev = modifiers
        timer:stop()
    end

    return false

end ): start()

hs.eventtap.new( { hs.eventtap.event.types.keyDown }, function()
    send = false
    return false
end ):start()
