---@class peripheral
peripheral = {}


--- Returns true if a peripheral is connected on side.
---@param side string
---@return boolean present
function peripheral.isPresent(side)
  return true
end

--- Returns the type of peripheral connected on side, as a string.
--- If no peripheral is connected,returns nil.
---@param side string
---@return string|nil type
function peripheral.getType(side)
end

--- Returns a list of the names of all the methods of the peripheral connected on side.
--- If no peripheral is connected, returns nil.
---@param side string
---@return table|nil methods
function peripheral.getMethods(side)
end

--- Calls a method on a peripheral. The arguments (apart from side and method) and the return values
--- depend on the method being called. If no peripheral is connected, returns nil.
---@param side string
---@param method string
---@param ... string
---@return any
function peripheral.call(side, method, ...)
end

--- Returns a table of functions, allowing you to call peripheral methods as if they were normal Lua
--- functions. If no peripheral is connected, returns nil.
---@param side string
---@return table|nil pheripheral
function peripheral.wrap(side)
end

--- Finds an attached peripheral of the given type and if found returns a table of functions,
--- similar to peripheral.wrap, allowing you to call peripheral methods as if they were normal Lua
--- functions. If no peripheral of the given type is connected, it returns nil.
--- Requires ComputerCraft 1.6 or later.
---@param type string
---@param fnFilter function @optional
---@return table|nil peripheral
function peripheral.find(type, fnFilter)
end

--- This function returns a table of all the sides that have a peripheral present. If the present
--- peripheral is a wired modem any names of the peripherals that is on the network are also added
--- to the table.
---@return table names
function peripheral.getNames()
  return {}
end
