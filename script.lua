-- Coded By Batman2741 and CocoJonny --

-- Auto generated script file --

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

seen = false
forward = keybinds:newKeybind("Forward","key.keyboard.w")
back = keybinds:newKeybind("Forward","key.keyboard.s")
left = keybinds:newKeybind("Forward","key.keyboard.a")
right = keybinds:newKeybind("Forward","key.keyboard.d")
jump = keybinds:newKeybind("Forward","key.keyboard.space")
crouch = keybinds:newKeybind("Forward","key.keyboard.left.shift")

--tick event, called 20 times per second
function events.tick()
  playerList = world.getPlayers()
  for k, v in pairs(playerList) do
    height = v:getEyeHeight()
    pos = v:getPos()
    lookDir = v:getLookDir()
    heightVec = vectors.vec3(0,height,0)
    eyePos = pos+heightVec
    eyePosPlus = eyePos+lookDir*16
    for x = -12, 12, 1 do
      for y = -6, 6, 1 do
        for z = -6, 6, 1 do
          block = raycast:entity(eyePos+lookDir*0.5,eyePosPlus+vectors.vec3(x,y,z),function(x)
            if x == player then
              seen = true
            else
              seen = false
            end
          end)
        end
      end
    end
  end
  if seen then
    events.MOUSE_MOVE:register(function (x,y)
      return true
    end)
    events.MOUSE_PRESS:register(function (x,y)
      return true
    end)
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
  else
    events.MOUSE_MOVE:clear()
    events.MOUSE_PRESS:clear()
    forward.press = function ()
      return false
    end
    back.press = function ()
      return false
    end
    left.press = function ()
      return false
    end
    right.press = function ()
      return false
    end
    jump.press = function ()
      return false
    end
    crouch.press = function ()
      return false
    end
  end
end

--render event, called every time your avatar is rendered
--it have two arguments, "delta" and "context"
--"delta" is the percentage between the last and the next tick (as a decimal value, 0.0 to 1.0)
--"context" is a string that tells from where this render event was called (the paperdoll, gui, player render, first person)
function events.render(delta, context)
  
end
