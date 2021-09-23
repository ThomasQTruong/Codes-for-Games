--[[
 - thomaslib.lua
 - 
 - A library that provides many useful functions which help
 - create opencomputer programs much easier.
 -
 - Copyright (c) 2021, Thomas Truong.
--]]

local thomaslib = {}

local robot = require("robot")
local component = require("component")
local nav = component.navigation


--[[
  Makes the robot go to a location.
  Does not have pathmaking, nothing should obstruct it.
  
  @param coord : table, the coordinate to go to.
--]]
function thomaslib.goTo(coord)
  local pos = {nav.getPosition()}
  -- Convert pos to whole numbers.
  pos[1] = math.floor(pos[1])
  pos[2] = math.floor(pos[2])
  pos[3] = math.floor(pos[3])

  -- Get the distance X-wise.
  local distanceX = coord[1] - pos[1]
  local distanceY = coord[2] - pos[2]
  local distanceZ = coord[3] - pos[3]

  -- Face East.
  thomaslib.changeDirection(5)

  -- x coordinate
  while distanceX ~= 0 do
    -- Decides whether to go backwards or forwards.
    if distanceX < 0 then
      thomaslib.goBackward()
      distanceX = distanceX + 1
    else
      thomaslib.goForward()
      distanceX = distanceX - 1
    end
  end

  -- y coordinate
  while distanceY ~= 0 do
    if distanceY < 0 then
      thomaslib.goDown()
      distanceY = distanceY + 1
    else
      thomaslib.goUp()
      distanceY = distanceY - 1
    end
  end

  -- Face North
  thomaslib.changeDirection(2)

  -- z coordinate
  while distanceZ ~= 0 do
    if distanceZ < 0 then
      thomaslib.goForward()
      distanceZ = distanceZ + 1
    else
      thomaslib.goBackward()
      distanceZ = distanceZ - 1
    end
  end
end

--[[
  Changes the direction of the robot.
  Figures out the quickest turns.

  @param dir : int, the direction to turn to.
    2 = north
    5 = east
    3 = south
    4 = west
--]]
function thomaslib.changeDirection(dir)
  -- Valid dir?
  if dir < 2 or dir > 5 then
    os.exit(1)
  end

  local currentDir = nav.getFacing()

  -- currentDir is 3 or 4.
  if currentDir == 3 or currentDir == 4 then
    -- dir is even.
    if dir % 2 == 0 then
      robot.turnRight()
      -- Need a second turn?
      if nav.getFacing() ~= dir then
        robot.turnRight()
      end
    -- dir is odd.
    else
      robot.turnLeft()
      -- Need a second turn?
      if nav.getFacing() ~= dir then
        robot.turnLeft()
      end
    end
  -- currentDir is 2 or 5.
  else
    -- dir is even.
    if dir % 2 == 0 then
      robot.turnLeft()
      -- Need a second turn?
      if nav.getFacing() ~= dir then
        robot.turnLeft()
      end
    -- dir is odd.
    else
      robot.turnRight()
      -- Need a second turn?
      if nav.getFacing() ~= dir then
        robot.turnRight()
      end
    end
  end
end


--[[
  Force actions.
  Makes the robot keep attempting to do the same action
    until it succeeds.
--]]
function thomaslib.goForward()
  while not robot.forward() do
  end
end

function thomaslib.goBackward()
  while not robot.back() do
  end
end

function thomaslib.goUp()
  while not robot.up() do
  end
end

function thomaslib.goDown()
  while not robot.down() do
  end
end

function thomaslib.placeBlock()
  while not robot.place() do
  end
end

-- @param amount : integer, the amount of items to suck.
function thomaslib.suckItem(amount)
  for i = 1, amount, 1 do
    while not robot.suck(1) do
    end
  end
end


--[[
  Build shortcuts.
  Easily make the robot build next to it.
--]]
function thomaslib.buildRight()
  robot.turnRight()
  thomaslib.goForward()
  robot.turnLeft()
  thomaslib.placeBlock()
end

function thomaslib.buildLeft()
  robot.turnLeft()
  thomaslib.goForward()
  robot.turnRight()
  thomaslib.placeBlock()
end

function thomaslib.buildUp()
  thomaslib.goUp()
  thomaslib.placeBlock()
end


return thomaslib
