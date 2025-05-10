---@class turtle
turtle = {}


--- Craft items using ingredients anywhere in the turtle's inventory and place results in the active
--- slot. If a quantity is specified, it will craft only up to that many items, otherwise, it will
--- craft as many of the items as possible.
---@param quantity number|nil @optional
---@return boolean success
function turtle.craft(quantity)
  return true
end

--- Try to move the turtle forward.
---@return boolean success
function turtle.forward()
  return true
end

--- Try to move the turtle backward.
---@return boolean success
function turtle.back()
  return true
end

--- Try to move the turtle up.
---@return boolean success
function turtle.up()
  return true
end

--- Try to move the turtle down.
---@return boolean success
function turtle.down()
  return true
end

--- Turn the turtle left.
---@return boolean success
function turtle.turnLeft()
  return true
end

--- Turn the turtle right.
---@return boolean success
function turtle.turnRight()
  return true
end

--- Make the turtle select slot slotNum (1 is top left, 16 (9 in 1.33 and earlier) is bottom right).
---@param slotNum number
---@return boolean success
function turtle.select(slotNum)
  return true
end

--- Indicates the currently selected inventory slot
---@return number slot
function turtle.getSelectedSlot()
  return 0
end

--- Counts how many items are in the currently selected slot or, if specified, slotNum slot.
---@param slotNum number|nil @optional
---@return number count
function turtle.getItemCount(slotNum)
  return 0
end

--- Counts how many remaining items you need to fill the stack in the currently selected slot or,
--- if specified, slotNum slot.
---@param slotNum number|nil @optional
---@return number count
function turtle.getItemSpace(slotNum)
  return 0
end

--- Returns the ID string, count and damage values of currently selected slot or,
--- if specified, slotNum slot.
---@param slotNum number|nil @optional
---@return table data
function turtle.getItemDetail(slotNum)
  return {}
end

--- Attempts to equip an item in the current slot to the turtle's left side, switching the
--- previously equipped item back into the inventory.
---@return boolean success
function turtle.equipLeft()
  return true
end

--- Attempts to equip an item in the current slot to the turtle's right side, switching the
--- previously equipped item back into the inventory.
---@return boolean success
function turtle.equipRight()
  return true
end

--- Attacks in front of the turtle.
---@param toolSide string|nil @optional
---@return boolean success
function turtle.attack(toolSide)
  return true
end

--- Attacks above the turtle.
---@param toolSide string|nil @optional
---@return boolean success
function turtle.attackUp(toolSide)
  return true
end

--- Attacks under the turtle.
---@param toolSide string|nil @optional
---@return boolean success
function turtle.attackDown(toolSide)
  return true
end

--- Breaks the block in front. With hoe: tills the dirt in front of it.
---@param toolSide string|nil @optional
---@return boolean success
function turtle.dig(toolSide)
  return true
end

--- Breaks the block above.
---@param toolSide string|nil @optional
---@return boolean success
function turtle.digUp(toolSide)
  return true
end

--- Breaks the block below. With hoe: tills the dirt beneath the space below it.
---@param toolSide string|nil @optional
---@return boolean success
function turtle.digDown(toolSide)
  return true
end

--- Places a block of the selected slot in front. Engrave signText on signs if provided.
--- Collects water or lava if the currently selected slot is an empty bucket.
---@param signText string|nil @optional
---@return boolean success
function turtle.place(signText)
  return true
end

--- Places a block of the selected slot above.
--- Collects water or lava if the currently selected slot is an empty bucket.
---@return boolean success
function turtle.placeUp()
  return true
end

--- Places a block of the selected slot below.
--- Collects water or lava if the currently selected slot is an empty bucket.
---@return boolean success
function turtle.placeDown()
  return true
end

--- Detects if there is a block in front. Does not detect mobs.
---@return boolean result
function turtle.detect()
  return true
end

--- Detects if there is a block above.
---@return boolean result
function turtle.detectUp()
  return true
end

--- Detects if there is a block below.
---@return boolean result
function turtle.detectDown()
  return true
end

--- Returns the ID string and metadata of the block in front of the Turtle.
---@return boolean success
---@return table|string dataOrErrorMessage
function turtle.inspect()
  return true, {}
end

--- Returns the ID string and metadata of the block above the Turtle.
---@return boolean success, table data
function turtle.inspectUp()
  return true, {}
end

--- Returns the ID string and metadata of the block below the Turtle
---@return boolean success, table data
function turtle.inspectDown()
  return true, {}
end

--- Detects if the block in front is the same as the one in the currently selected slot.
---@return boolean result
function turtle.compare()
  return true
end

--- Detects if the block above is the same as the one in the currently selected slot.
---@return boolean result
function turtle.compareUp()
  return true
end

--- Detects if the block below is the same as the one in the currently selected slot.
---@return boolean result
function turtle.compareDown()
  return true
end

--- Compare the current selected slot and the given slot to see if the items are the same.
--- Returns true if they are the same, false if not.
---@param slot number
---@return boolean result
function turtle.compareTo(slot)
  return true
end

--- Drops all items in the selected slot, or specified, drops count items.
--- [>= 1.4 only:] If there is a inventory on the side (i.e in front of the turtle) it will try to
--- place into the inventory, returning false if the inventory is full.
---@param count number|nil @optional
---@return boolean success
function turtle.drop (count)
  return true
end

--- Drops all items in the selected slot, or specified, drops count items.
--- [>= 1.4 only:] If there is a inventory on the side (i.e above the turtle) it will try to
--- place into the inventory, returning false if the inventory is full.
---@param count number|nil @optional
---@return boolean success
function turtle.dropUp(count)
  return true
end

--- Drops all items in the selected slot, or specified, drops count items.
--- [>= 1.4 only:] If there is a inventory on the side (i.e below the turtle) it will try to
--- place into the inventory, returning false if the inventory is full. If above a furnace, will
--- place item in the top slot.
---@param count number|nil @optional
---@return boolean success
function turtle.dropDown(count)
  return true
end

--- Picks up an item stack of any number, from the ground or an inventory in front of the turtle,
--- then places it in the selected slot. If the turtle can't pick up the item, the function returns
--- false. amount parameter requires ComputerCraft 1.6 or later.
---@param amount number|nil @optional
---@return boolean success
function turtle.suck(amount)
  return true
end

--- Picks up an item stack of any number, from the ground or an inventory above the turtle,
--- then places it in the selected slot. If the turtle can't pick up the item, the function returns
--- false. amount parameter requires ComputerCraft 1.6 or later.
---@param amount number|nil @optional
---@return boolean success
function turtle.suckUp(amount)
  return true
end

--- Picks up an item stack of any number, from the ground or an inventory below the turtle,
--- then places it in the selected slot. If the turtle can't pick up the item, the function returns
--- false. amount parameter requires ComputerCraft 1.6 or later.
---@param amount number|nil @optional
---@return boolean success
function turtle.suckDown(amount)
  return true
end

--- If the current selected slot contains a fuel item, it will consume it to give the turtle the
--- ability to move. Added in 1.4 and is only needed in needfuel mode. If the current slot doesn't
--- contain a fuel item, it returns false. Fuel values for different items can be found at
--- Turtle.refuel#Fuel_Values. If a quantity is specified, it will refuel only up to that many
--- items, otherwise, it will consume all the items in the slot.
---@param quantity number|nil @optional
---@return boolean success
function turtle.refuel(quantity)
  return true
end

--- Returns the current fuel level of the turtle, this is the number of blocks the turtle can move.
--- If turtleNeedFuel = 0 then it returns "unlimited".
---@return number fuel
function turtle.getFuelLevel()
  return 0
end

--- Returns the maximum amount of fuel a turtle can store - by default, 20,000 for regular turtles,
--- 100,000 for advanced. If turtleNeedFuel = 0 then it returns "unlimited".
---@return number fuel
function turtle.getFuelLimit()
  return 0
end

--- Transfers quantity items from the selected slot to slot. If quantity isn't specified, will
--- attempt to transfer everything in the selected slot to slot.
---@param slot number
---@param quantity number|nil @optional
---@return boolean success
function turtle.transferTo(slot, quantity)
  return true
end
