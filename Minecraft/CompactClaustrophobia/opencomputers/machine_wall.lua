--[[
 - machine_wall.lua
 - Uses a robot to autocraft n amount of compact machine wall(s).
 - The robot will craft using a miniaturizer.
 -
 - Copyright (c) 2021, Thomas Truong.
--]]


local thomaslib = require("thomaslib")
local robot = require("robot")

local origin = {2, 41, 2}   -- [0] = x, [1] = y, [2] = z
local items = {{4, 41, 2},  -- [0][i] = iron_block, xyz.
               {5, 41, 2}}  -- [1][i] = redstone_dust, xyz.

-- args[1] = the amount of item(s) to create.
local args = {...}

-- Amount was not inputted, end.
if args[1] == nil then
  print("Usage: ./file [amount]")
  os.exit()
end


-- The main function; everything happens here!
local function main()
  -- Make sure it is selecting first slot.
  robot.select(1)
  
  -- Grab 1 iron block.
  thomaslib.goTo(items[1])
  thomaslib.suckItem(1)

  -- Grab 2 redstone dust.
  thomaslib.goTo(items[2])
  thomaslib.suckItem(2)

  -- Go to build start point.
  thomaslib.goTo({5, 41, 6})
  robot.select(1)         -- Switch to iron block.
  thomaslib.placeBlock()  -- Place the iron block.

  -- Switch to redstone dust and place on iron block.
  robot.select(2)
  thomaslib.goUp()
  thomaslib.placeBlock()

  -- Throw dust.
  thomaslib.goUp();
  thomaslib.goUp();
  thomaslib.goUp();
  robot.drop(1)
  
  -- Go back to origin.
  thomaslib.goTo(origin)
end


-- Repeat main args[1] times.
for i = 1, args[1], 1 do
  main()
end
