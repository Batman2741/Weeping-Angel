-- Auto generated script file --

-- entity init event, used for when the avatar entity is loaded for the first time
function events.entity_init()
    -- player functions goes here
    init() -- Call the init function when the entity initializes
end

-- tick event, called 20 times per second
function events.tick()
    -- code goes here
    tick() -- Call the tick function regularly
end

-- render event, called every time your avatar is rendered
-- it has two arguments, "delta" and "context"
-- "delta" is the percentage between the last and the next tick (as a decimal value, 0.0 to 1.0)
-- "context" is a string that tells from where this render event was called (the paperdoll, gui, player render, first person)
function events.render(delta, context)
    -- code goes here
end

-- Code by Batman2741 and CocoJonny
-- main.lua
local player
local isMoving = false

function init()
    print("Initializing script...")
    print("client object: ", client) -- Debug print
    player = client.getPlayer()
    print("Player: ", player) -- Debug print
    if player == nil then
        print("Error: client.getPlayer() returned nil")
    else
        print("Weeping Angel script initialized")
    end
end

function tick()
    if player == nil then
        print("Error: player is nil in tick function")
        return
    end

    local players = world.getPlayers()
    print("Players in world: ", players) -- Debug print
    local beingWatched = false

    for _, otherPlayer in pairs(players) do
        print("Checking player: ", otherPlayer) -- Debug print
        if otherPlayer ~= player then
            local lookingAt = otherPlayer.getLookingAt()
            print("Other player looking at: ", lookingAt) -- Debug print
            if lookingAt == player then
                beingWatched = true
                break
            end
        end
    end

    if beingWatched then
        print("Player is being watched!")
        -- watched
  events.MOUSE_MOVE:register(function (x,y)
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
    else
        print("Player is not being watched.")
        -- Add code to handle the player not being watched
    end
end
