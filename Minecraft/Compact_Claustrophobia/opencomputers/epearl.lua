--[[
 - template.lua
 - desc.
 -
 - Copyright (c) 2021, Thomas Truong.
--]]

local thomaslib = require("thomaslib")

local origin = {2, 41, 2}   -- [0] = x, [1] = y, [2] = z
local items = {{5, 41, 2},  -- [0][i] = item1, xyz.
               {6, 41, 2},  -- [1][i] = item2, xyz.
               {7, 41, 2}}  -- [2][i] = item3, xyz.

-- args[1] = the amount of item(s) to create.
args = {...}

-- Amount was not inputted, end.
if args[1] == nil then
  print("Usage: ./file [amount]")
  os.exit(1)
end


-- The main function; everything happens here!
function main()
   -- Grab 1 redstone dust.
   goTo(items[1])
   suckItem(1)
   -- Grab 26 obsidian blocks.
   goTo(items[2])
   suckItem(26)
   -- Grab 1 redstone block.
   goTo(items[3])
   suckItem(1)
   --[[
   -- Go to build start point.
   goTo({6, 41, 5})
   robot.select(2)  -- Switch to obsidian block.
   placeBlock()
   --]]
end


-- Repeat main args[1] times.
for i = 1, args[1], 1 do
  main()
end


-- Repeat main args[1] times.
for i = 1, args[1], 1 do
  main()
end
