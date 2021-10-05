--[[
 - epearl.lua
 - Uses a robot to autocraft n amount of enderpearl(s).
 - The robot will craft using a miniaturizer.
 -
 - Copyright (c) 2021, Thomas Truong.
--]]


local thomaslib = require("thomaslib")
local robot = require("robot")

local origin = {2, 41, 2}   -- [0] = x, [1] = y, [2] = z
local items = {{5, 41, 2},  -- [0][i] = item1, xyz.
               {6, 41, 2},  -- [1][i] = item2, xyz.
               {7, 41, 2}}  -- [2][i] = item3, xyz.

-- args[1] = the amount of item(s) to create.
local args = {...}

-- Amount was not inputted, end.
if args[1] == nil then
  print("Usage: ./file [amount]")
  os.exit()
end


-- The main function; everything happens here!
local function main()
  -- Grab 1 redstone dust.
  thomaslib.goTo(items[1])
  thomaslib.suckItem(1)
  -- Grab 26 obsidian blocks.
  thomaslib.goTo(items[2])
  thomaslib.suckItem(26)
  -- Grab 1 redstone block.
  thomaslib.goTo(items[3])
  thomaslib.suckItem(1)
  -- Go to build start point.
  thomaslib.goTo({6, 41, 5})
  robot.select(2)  -- Switch to obsidian block.
  -- Build layer 1, row 1.
  thomaslib.buildRowLeft()
  -- Build layer 1, row 2.
  robot.back()
  thomaslib.buildRowRight()
  -- Build layer 1, row 3.
  robot.back()
  thomaslib.buildRowLeft()
  -- Build layer 2, row 1.
  robot.up()
  thomaslib.goForward()
  thomaslib.goForward()
  thomaslib.buildRowRight()
  -- Build layer 2, row 2. 
  robot.back()
  thomaslib.placeBlock()
  robot.select(3)  -- Switch to redstone block.
  thomaslib.buildLeft()
  robot.select(2)  -- Switch back to obsidian block.
  thomaslib.buildLeft()
  -- Build layer 2, row 3.
  robot.back()
  thomaslib.buildRowRight()
  -- Build layer 3, row 1.
  robot.up()
  thomaslib.goForward()
  thomaslib.goForward()
  thomaslib.buildRowLeft()
  -- Build layer 3, row 2.
  robot.back()
  thomaslib.buildRowRight()
  -- Build layer3, row 3.
  robot.back()
  thomaslib.buildRowLeft()
  -- Throw redstone dust.
  robot.back()
  robot.select(1)  -- Switch to redstone dust.
  robot.drop(1)

  -- Go back to origin.
  thomaslib.goTo(origin)
end


-- Repeat main args[1] times.
for i = 1, args[1], 1 do
  main()
end
