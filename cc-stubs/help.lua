---@class help
help = {}


--- Returns the list of locations the API will look in for help files.
---@return string path
function help.path()
  return ""
end

--- Sets the list of locations the API will look in for help files.
function help.setPath(path)
end

--- Returns the path to the file containing the help page for topic, or nil if the topic
--- cannot be found.
---@return string|nil path
function help.lookup(topic)
end

--- Returns a list of all available help topics.
---@return table topics
function help.topics()
  return {}
end

--- Returns a list of suffixes that can be concatenated with the prefix to get valid topic titles.
--- Requires CC 1.74 or later.
---@param topicPrefix string
---@return table topicSuffixes
function help.completeTopic(topicPrefix)
  return {}
end
