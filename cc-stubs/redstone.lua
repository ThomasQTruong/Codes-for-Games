---@class redstone
redstone = {}


--- Returns a table of possible sides.
---@return table possibleSides
function redstone.getSides()
  return {}
end

--- Returns the current redstone input signal state on side.
---@param side string
---@return boolean state
function redstone.getInput(side)
  return true
end

--- Sets or resets a redstone signal on side.
---@param side string
---@param value boolean
function redstone.setOutput(side, value)
end

--- Returns the current redstone output signal on side.
---@param side string
---@return boolean state
function redstone.getOutput(side)
  return true
end

--- (Requires CC1.51 and above) Returns the current redstone input signal strength on side.
--- If no input is present, returns 0. If a redstone source (such as a redstone torch or block) is
--- directly adjacent to the computer, returns 15.
---@param side string
---@return number strength
function redstone.getAnalogInput(side)
  return 0
end

--- (Requires CC1.51 and above) Sets or resets a redstone signal on side to strength (where strength
--- is a positive integer).
---@param side string
---@param strength number
function redstone.setAnalogOutput(side, strength)
end

--- (Requires CC1.51 and above) Returns the current redstone output signal strength on side.
---@param side string
---@return number strength
function redstone.getAnalogOutput(side)
  return 0
end

--- (Requires CC1.51 and above) Returns the current redstone input signal strength on side.
--- If no input is present, returns 0. If a redstone source (such as a redstone torch or block) is
--- directly adjacent to the computer, returns 15.
---@param side string
---@return number strength
function redstone.getAnalogueInput(side)
  return 0
end

--- (Requires CC1.51 and above) Sets or resets a redstone signal on side to strength (where strength
--- is a positive integer).
---@param side string
---@param strength number
function redstone.setAnalogueOutput(side, strength)
end

--- (Requires CC1.51 and above) Returns the current redstone output signal strength on side.
---@param side string
---@return number strength
function redstone.getAnalogueOutput(side)
  return 0
end

--- Returns the state (as a number) of a bundled cable connected to side.
---@param side string
---@return number bundledInput
function redstone.getBundledInput(side)
  return 0
end

--- Returns the set of wires in a bundled cable which are being activated by the terminal on side.
---@param side string
---@return number bundledOutput
function redstone.getBundledOutput(side)
  return 0
end

--- Sets one or multiple colored signals in a bundled cable attached to side. colors will determine
--- which signals are activated. In order to set multiple signals, add the color values of the
--- colors you want to activate. To turn off all of the colors, use 0.
---@param side string
---@param colors number
function redstone.setBundledOutput(side, colors)
end

--- Returns true if color is active in a bundled cable attached to side. Else, returns false.
---@param side string
---@param color number
---@return boolean state
function redstone.testBundledInput(side, color)
  return true
end
