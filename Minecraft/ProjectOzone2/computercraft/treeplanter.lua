--[[
 - treeplanter.lua
 - Simple turtle AI for planting trees at a singular spot in front of it.
 -
 - Copyright (c) 2025, Thomas Truong.
--]]

while true do
  local detected, _ = turtle.inspect()
  if not detected then
    os.sleep(1)
    turtle.place()
  end
end
