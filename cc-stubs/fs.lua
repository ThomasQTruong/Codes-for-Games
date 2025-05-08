---@class fs
fs = {}


--- Returns a list of all the files (including subdirectories but not their contents) contained in
--- a directory, as a numerically indexed table.
---@param path string
---@return table files
function fs.list(path)
  return {}
end

--- Checks if a path refers to an existing file or directory.
---@param path string
---@return boolean exists
function fs.exists(path)
  return true
end

--- Checks if a path refers to an existing directory.
---@param path string
---@return boolean isDirectory
function fs.isDir(path)
  return true
end

--- Checks if a path is read-only (i.e. cannot be modified).
---@param path string
---@return boolean readonly
function fs.isReadOnly(path)
  return true
end

--- Gets the final component of a pathname.
---@param path string
---@return string name
function fs.getName(path)
  return ""
end

--- Gets the storage medium holding a path, or nil if the path does not exist.
---@param path string
---@return string drive
function fs.getDrive(path)
  return ""
end

--- Gets the size of a file in bytes.
---@param path string
---@return number size
function fs.getSize(path)
  return 0
end

--- Gets the remaining space on the drive containing the given directory.
---@param path string
---@return number
function fs.getFreeSpace(path)
  return 0
end

--- Makes a directory.
---@param path string
function fs.makeDir(path)
end

--- Moves a file or directory to a new location.
---@param fromPath string
---@param toPath string
function fs.move(fromPath, toPath)
end

--- Copies a file or directory to a new location.
---@param fromPath string
---@param toPath string
function fs.copy(fromPath, toPath)
end

--- Deletes a file or directory.
---@param path string
function fs.delete(path)
end

--- Combines two path components, returning a path consisting of the local path nested
--- inside the base path.
---@param basePath string
---@param localPath string
---@return string path
function fs.combine(basePath, localPath)
  return ""
end

--- Opens a file so it can be read or written.
---@param path string
---@return table handle
function fs.open(path, mode)
  return {}
end

--- Searches the computer's files using wildcards. Requires version 1.6 or later.
---@param wildcard string
---@return table files
function fs.find(wildcard)
  return {}
end

--- Returns the parent directory of path. Requires version 1.63 or later.
---@param path string
---@return string parentDirectory
function fs.getDir(path)
  return ""
end

--- Returns a list of strings that could be combined with the provided name to produce valid
--- entries in the specified folder. Requires version 1.74 or later.
---@param partialname string
---@param path string
---@param includeFiles boolean|nil @optional
---@param includeSlashes boolean|nil @optional
---@return table matches
function fs.complete(partialname, path, includeFiles, includeSlashes)
  return {}
end
