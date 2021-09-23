--[[
 - epearl.lua
 - Uses an in-game robot to create n amounts of enderpearls.
 -
 - Copyright (c) 2021, Thomas Truong.
--]]

local robot = require("robot")
local component = require("component")
local nav = component.navigation

local origin = {2, 41, 2}   -- [0] = x, [1] = y, [2] = z
local items = {{5, 41, 3},  -- [0][i] = item1, xyz.
               {6, 41, 8},  -- [1][i] = item2, xyz.
               {7, 41, 8}}  -- [2][i] = item3, xyz.

-- args[1] = the amount of item(s) to create.
args = {...}

-- Amount was not inputted, end.
if args[1] == nil then
  print("Usage: ./file [amount]")
  os.exit()
end

-- The main function; everything happens here!
function main()
  goTo(items[1])
  robot.suck()
end


--[[
  Force actions.
  Makes the robot keep attempting to do the same action
    until it succeeds.
]]
function goForward()
  while not robot.forward() do
  end
end

function goBackward()
  while not robot.back() do
  end
end

function goUp()
  while not robot.up() do
  end
end

function goDown()
  while not robot.down() do
  end
end

function placeBlock()
  while not robot.place() do
  end
end


--[[
  Build shortcuts.
  Easily make the robot build next to it.
]]
function buildRight()
  robot.turnRight()
  goForward()
  robot.turnLeft()
  placeBlock()
end

function buildLeft()
  robot.turnLeft()
  goForward()
  robot.turnRight()
  placeBlock()
end

function buildUp()
  goUp()
  placeBlock()
end


--[[
  Makes the robot go to a location.
  Does not have pathmaking, nothing should obstruct it.
  
  @param coord the coordinate to go to; table value.
]]
function goTo(coord)
  local pos = {nav.getPosition()}
  -- Convert pos to whole numbers.
  pos[1] = math.floor(pos[1])
  pos[2] = math.floor(pos[2])
  pos[3] = math.floor(pos[3])

  -- Get the distance X-wise.
  local distanceX = coord[1] - pos[1]
  local distanceY = coord[2] - pos[2]
  local distanceZ = coord[3] - pos[3]

  -- Face the correct way.
  while nav.getFacing() ~= 5 do
    robot.turnLeft()
  end

  -- x coordinate
  while distanceX ~= 0 do
    -- Decides whether to go backwards or forwards.
    if distanceX < 0 then
      goBackward()
      distanceX = distanceX + 1
    else
      goForward()
      distanceX = distanceX - 1
    end
  end

  -- y coordinate
  while distanceY ~= 0 do
    if distanceY < 0 then
      goDown()
      distanceY = distanceY + 1
    else
      goUp()
      distanceY = distanceY - 1
    end
  end

  -- Face the correct way.
  while nav.getFacing() ~= 2 do
    robot.turnLeft()
  end

  -- z coordinate
  while distanceZ ~= 0 do
    if distanceZ < 0 then
      goForward()
      distanceZ = distanceZ + 1
    else
      goBackward()
      distanceZ = distanceZ - 1
    end
  end
end


-- Repeat main args[1] times.
for i = 1, args[1], 1 do
  main()
end
