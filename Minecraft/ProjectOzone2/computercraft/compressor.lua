--[[
 - compressor.lua
 - Compresses blocks (i.e. Cobblestone -> Compressed Cobblestone).
 -
 - Copyright (c) 2025, Thomas Truong.
--]]

local slots = {1, 2, 3, 5, 6, 7, 9, 10, 11}

while true do
  --- For every slot in a 3x3.
  for _,slot in ipairs(slots) do
    --- Select slot.
    turtle.select(slot)
    --- Get full stack of item for the slot from the storage BELOW the turtle.
    while turtle.getItemCount() ~= 64 do
      turtle.suckDown(64 - turtle.getItemCount())
    end
  end

  --- Craft compressed item.
  turtle.craft()

  --- Deposit compressed item to the top.
  turtle.dropUp()
end
