---@class colors
colors = {}


colors.white = 1
colors.orange = 2
colors.magenta = 4
colors.lightBlue = 8
colors.yellow = 16
colors.lime = 32
colors.pink = 64
colors.gray = 128
colors.lightGray = 256
colors.cyan = 512
colors.purple = 1024
colors.blue = 2048
colors.brown = 4096
colors.green = 8192
colors.red = 16384
colors.black = 32768

--- Combines a one or more colors (or sets of colors) into a larger set.
---@return number value
function colors.combine(color1, color2, ...)
  return 0
end

--- Removes one or more colors (or sets of colors) from an initial set.
---@return number value
function colors.subtract(colors, color1, color2, ...)
  return 0
end

--- Tests whether color is contained within colors.
---@return boolean contained
function colors.test(colors, color)
  return true
end
