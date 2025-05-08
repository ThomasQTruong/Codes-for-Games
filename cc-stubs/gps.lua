---@class gps
gps = {}


--- Tries to retrieve the computer or turtles own location. On success, returns the location of the
--- turtle’s modem. On failure (if no responses are received for timeout seconds, by default 2),
--- returns nil. If debug is true, debug messages are printed.
---@param timeout number|nil @optional
---@param debug boolean|nil @optional
---@return number|nil x
---@return number|nil y
---@return number|nil z
function gps.locate(timeout, debug)
  return 0, 0, 0
end
