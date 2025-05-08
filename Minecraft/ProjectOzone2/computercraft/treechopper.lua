--[[
 - treechopper.lua
 - Simple turtle AI for chopping trees at a singular spot.
 -
 - Copyright (c) 2025, Thomas Truong.
--]]

while true do
  while turtle.detect() do
    turtle.dig()
    turtle.up()
  end

  while not turtle.detect() and not turtle.detectDown() do
    turtle.down()
  end
end