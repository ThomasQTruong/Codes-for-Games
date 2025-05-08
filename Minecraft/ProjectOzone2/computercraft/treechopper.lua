--[[
 - treechopper.lua
 - Simple turtle AI for chopping trees at a singular spot.
 -
 - Copyright (c) 2025, Thomas Truong.
--]]

while true do
  --- Wood is infront of turtle (start harvesting).
  local _, data = turtle.inspect()
  if data.name == "minecraft:log" then
    --- Mine stump.
    turtle.dig()
    --- Move where the stump was.
    turtle.forward()
    --- Dig up until no more wood.
    while data.name == "minecraft:log" do
      _, data = turtle.inspect()
      turtle.digUp()
      turtle.up()
    end
    --- Move down after mining all the wood.
    while not turtle.detectDown() do
      turtle.down()
    end
    --- Move back to origin.
    turtle.back()
    --- Replant sapling.
  end
end
