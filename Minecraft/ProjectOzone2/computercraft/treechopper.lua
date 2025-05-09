--[[
 - treechopper.lua
 - Simple turtle AI for chopping trees at a singular spot.
 -
 - Copyright (c) 2025, Thomas Truong.
--]]

print("Turtle fuel: " .. turtle.getFuelLevel())
print("If turtle fuel is low (< 30), please insert some fuel in the first slot.")
print("Wood = 15 fuel.")
while true do
  --- Refuel if low.
  while turtle.getFuelLevel() < 30 do
    turtle.refuel(1)
    print("Turtle fuel: " .. turtle.getFuelLevel())
  end

  --- Wood is infront of turtle (start harvesting).
  local _, data = turtle.inspect()
  if data.name == "minecraft:log" then
    --- Mine stump.
    turtle.dig()
    --- Move where the stump was.
    turtle.forward()
    --- Dig up until no more wood.
    while data.name == "minecraft:log" do
      _, data = turtle.inspectUp()
      turtle.digUp()
      turtle.up()
    end
    --- Move down after mining all the wood.
    while not turtle.detectDown() do
      turtle.down()
    end
    --- Move back to origin.
    turtle.back()
    --- Make sure it is back on the ground (possibly had a sapling in its way).
    while not turtle.detectDown() do
      turtle.down()
    end
  end
end
