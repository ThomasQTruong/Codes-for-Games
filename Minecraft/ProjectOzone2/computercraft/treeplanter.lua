--[[
 - treeplanter.lua
 - Simple turtle AI for planting trees at a singular spot.
 -
 - Copyright (c) 2025, Thomas Truong.
--]]

while true do
  local _, data = turtle.inspect()
  if data.name == "minecraft:air" then
    sleep(1)
    turtle.place()
  end
end
