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
  Force actions.
  Makes the robot keep attempting to do the same action
    until it succeeds.
--]]
local function thomaslib.goForward()
  while not robot.forward() do
  end
end

local function thomaslib.goBackward()
  while not robot.back() do
  end
end

local function thomaslib.goUp()
  while not robot.up() do
  end
end

local function thomaslib.goDown()
  while not robot.down() do
  end
end

local function thomaslib.placeBlock()
  while not robot.place() do
  end
end

-- @param amount : integer, the amount of items to suck.
local function thomaslib.suckItem(amount)
  for i = 1, amount, 1 do
    while not robot.suck(1) do
    end
  end
end


--[[
  Build shortcuts.
  Easily make the robot build next to it.
--]]
local function thomaslib.buildRight()
  robot.turnRight()
  goForward()
  robot.turnLeft()
  placeBlock()
end

local function thomaslib.buildLeft()
  robot.turnLeft()
  goForward()
  robot.turnRight()
  placeBlock()
end

local function thomaslib.buildUp()
  goUp()
  placeBlock()
end

local function thomaslib.buildRowRight()
  placeBlock()
  buildRight()
  buildRight()
end

local function thomaslib.buildRowLeft()
  placeBlock()
  buildLeft()
  buildLeft()
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
local function thomaslib.changeDirection(dir)
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
  Makes the robot go to a location.
  Does not have pathmaking, nothing should obstruct it.
  
  @param coord : table, the coordinate to go to.
--]]
local function thomaslib.goTo(coord)
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
  changeDirection(5)

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

  -- Face North
  changeDirection(2)

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


return thomaslib
