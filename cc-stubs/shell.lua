---@class shell
shell = {}


--- Exits the current shell.
function shell.exit()
end

--- Returns the path to the working directory.
---@return string directory
function shell.dir()
  return ""
end

--- Sets the working directory.
---@param path string
function shell.setDir(path)
end

--- Returns the path.
---@return string path
function shell.path()
  return ""
end

--- Sets the path.
---@param path string
function shell.setPath(path)
end

--- Resolves a local path to an absolute path.
---@param localPath string
---@return string absolutePath
function shell.resolve(localPath)
  return ""
end

--- Resolves the absolute path to the program whose name you provided.
---@param name string
---@return string absolutePath
function shell.resolveProgram(name)
  return ""
end

--- Returns aliases.
---@return table aliases
function shell.aliases()
  return {}
end

--- Sets an alias.
---@param alias string
---@param program string
function shell.setAlias(alias, program)
end

--- Clears an alias.
---@param alias string
function shell.clearAlias(alias)
end

--- Returns a table of files in the current directory and in all paths in shell.path.
---@param showHidden boolean
---@return table programs
function shell.programs(showHidden)
  return {}
end

--- Returns the absolute path to the currently-executing program.
---@return string path
function shell.getRunningProgram()
  return ""
end

--- Runs a command (program).
---@param command string
---@param args1 string|nil @optional
---@param args2 string|nil @optional
---@param ... string|nil @optional
---@return boolean success
function shell.run(command, args1, args2, ...)
  return true
end

--- Runs a program in another multishell tab. Requires version 1.6 or newer and an advanced system.
---@param command string
---@param args1 string|nil @optional
---@param args2 string|nil @optional
---@param ... string|nil @optional
---@return number tabID
function shell.openTab(command, args1, args2, ...)
  return 0
end

--- Switches the multishell tab to tab with the given ID.
--- Requires version 1.6 or newer and an advanced system.
---@param tabID number
function shell.switchTab(tabID)
end

--- Given a partial command line, returns a list of suffixes that could potentially be used to
--- complete it. Requires version 1.74 or newer.
---@param prefix string
---@return table completionList
function shell.complete(prefix)
  return {}
end

--- Given a partial script / directory path, returns a list of suffixes that could potentially be
--- used to complete it, including alias and path matches. Requires version 1.74 or newer.
---@param prefix string
---@return table completionList
function shell.completeProgram(prefix)
  return {}
end

--- Registers a function that determines how shell.complete() handles completion behavior for a
--- given script. Requires version 1.74 or newer.
---@param path string
---@param completionFunction function
function shell.setCompletionFunction(path, completionFunction)
end

--- Returns a pointer to the table containing functions registered by shell.setCompletionFunction()
--- for use with shell.complete(). Requires version 1.74 or newer.
---@return table completionFunction
function shell.getCompletionInfo()
  return {}
end
