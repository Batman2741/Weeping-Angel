-- Coded By Batman2741 and CocoJonny --

--hide vanilla armor model
vanilla_model.ARMOR:setVisible(false)

--hide vanilla cape model
vanilla_model.CAPE:setVisible(false)

--hide vanilla elytra model
vanilla_model.ELYTRA:setVisible(false)

--entity init event, used for when the avatar entity is loaded for the first time
function events.entity_init()
  --player functions goes here
end

seen = true

if seen then
  events.MOUSE_MOVE:register(function (x,y)
    return true
  end)
  events.MOUSE_PRESS:register(function (x,y)
    return true
  end)
  forward = keybinds:newKeybind("Forward","key.keyboard.w")
  back = keybinds:newKeybind("Forward","key.keyboard.s")
  left = keybinds:newKeybind("Forward","key.keyboard.a")
  right = keybinds:newKeybind("Forward","key.keyboard.d")
  jump = keybinds:newKeybind("Forward","key.keyboard.space")
  crouch = keybinds:newKeybind("Forward","key.keyboard.left.shift")
  forward.press = function ()
    return true
  end
  back.press = function ()
    return true
  end
  left.press = function ()
    return true
  end
  right.press = function ()
    return true
  end
  jump.press = function ()
    return true
  end
  crouch.press = function ()
    return true
  end
end

function events.tick()
  
end

--tick event, called 20 times per second
function events.tick()
  height = player:getEyeHeight()
  pos = player:getPos()
  lookDir = player:getLookDir()
  eyePos = pos:add(0,height,0)
  pos = player:getPos()
  eyePosPlus = eyePos:add(lookDir*10)
  eyePos = pos:add(0,height,0)
  pos = player:getPos()
  block = raycast:block(eyePos,eyePosPlus)
  
end
--render event, called every time your avatar is rendered
--it have two arguments, "delta" and "context"
--"delta" is the percentage between the last and the next tick (as a decimal value, 0.0 to 1.0)
--"context" is a string that tells from where this render event was called (the paperdoll, gui, player render, first person)
function events.render(delta, context)
  
end
