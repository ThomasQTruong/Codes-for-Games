---@class term
term = {}


--- Writes text to the screen, using the current text and background colors.
---@param text string
function term.write(text)
end

--- Writes text to the screen using the specified text and background colors.
--- Requires version 1.74 or newer.
---@param text string
---@param textColors string
---@param backgroundColors string
function term.blit(text, textColors, backgroundColors)
end

--- Clears the entire screen.
function term.clear()
end

--- Clears the line the cursor is on.
function term.clearLine()
end

--- Returns two arguments containing the x and the y position of the cursor.
---@return number x, number y
function term.getCursorPos()
  return 0, 0
end

--- Sets the cursor's position.
---@param x number
---@param y number
function term.setCursorPos(x, y)
end

--- Disables the blinking or turns it on.
---@param bool boolean
function term.setCursorBlink(bool)
end

--- Returns whether the terminal supports color.
---@return boolean isColor
function term.isColor()
  return true
end

--- Returns whether the terminal supports colour.
---@return boolean isColour
function term.isColour()
  return true
end

--- Returns two arguments containing the x and the y values stating the size of the screen.
--- (Good for if you're making something to be compatible with both Turtles and Computers.)
---@return number x, number y
function term.getSize()
  return 0, 0
end

--- Scrolls the terminal n lines.
---@param n number
function term.scroll(n)
end

--- Redirects terminal output to another terminal object (such as a window or wrapped monitor).
--- Available only to the base term object.
---@param target any
---@return table previousTerminalObject
function term.redirect(target)
  return {}
end

--- Returns the current terminal object. Requires version 1.6 or newer, available only to the base
--- term object.
---@return table terminalObject
function term.current()
  return {}
end

--- Returns the original terminal object.
--- Requires version 1.6 or newer, available only to the base term object.
---@return table terminalObject
function term.native()
  return {}
end

--- Sets the text color of the terminal.
--- Limited functionality without an Advanced Computer / Turtle / Monitor.
---@param color number
function term.setTextColor(color)
end

--- Sets the text colour of the terminal.
--- Limited functionality without an Advanced Computer / Turtle / Monitor.
---@param colour number
function term.setTextCoulor(colour)
end

--- Returns the current text color of the terminal. Requires version 1.74 or newer.
---@return number color
function term.getTextColor()
  return 0
end

--- Returns the current text colour of the terminal. Requires version 1.74 or newer.
---@return number colour
function term.getTextColour()
  return 0
end

--- Sets the background color of the terminal.
--- Limited functionality without an Advanced Computer / Turtle / Monitor.
---@param color number
function term.setBackgroundColor(color)
end

--- Sets the background colour of the terminal.
--- Limited functionality without an Advanced Computer / Turtle / Monitor.
---@param colour number
function term.setBackgroundColour(colour)
end

--- Returns the current background color of the terminal. Requires version 1.74 or newer.
---@return number color
function term.getBackgroundColor()
  return 0
end

--- Returns the current background colour of the terminal. Requires version 1.74 or newer.
---@return number colour
function term.getBackgroundColour()
  return 0
end
