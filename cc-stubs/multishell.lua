---@class multishell
multishell = {}


--- Returns the ID of the currently running tab.
---@return number tabID
function multishell.getCurrent()
  return 0
end

--- Returns the number of tabs currently being handled by the multishell system.
---@return number tabCount
function multishell.getCount()
  return 0
end

--- Launches the specified script in a new tab.
---@param environment table
---@param programPath string
---@param arguments string|nil
---@return number newTabID
function multishell.launch(environment, programPath, arguments)
  return 0
end

--- Switches focus to the specified tab.
---@param tabID number
---@return boolean success 
function multishell.setFocus(tabID)
  return true
end

--- Relabels the specified tab to use the specified title.
---@param tabID number
---@param title string
function multishell.setTitle(tabID, title)
end

--- Returns the title of the specified tab.
---@param tabID number
---@return string title
function multishell.getTitle(tabID)
  return ""
end

--- Returns the ID of the currently focused tab.
---@return number tabID
function multishell.getFocus()
  return 0
end
