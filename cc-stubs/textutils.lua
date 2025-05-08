---@class textutils
textutils = {}


--- Writes string text at current cursor position, character-by-character. Number argument rate is
--- optional and is defaulted to 20. The higher the value of rate, the faster text is written
--- (passing a value of 1 writes one character per second).
---@param text string
---@param rate number
function textutils.slowWrite(text, rate)
end

--- Prints string text at current cursor position, character-by-character. Number argument rate is
--- optional and is defaulted to 20. The higher the value of rate, the faster text is printed
--- (passing a value of 1 prints one character per second). This function also prints a newline.
---@param text string
---@param rate number
function textutils.slowPrint(text, rate)
end

--- Takes input time and formats it in a more readable format. If the second value is true, returns
--- time in twenty-four hour format; if the second value is false, returns time in twelve-hour
--- format, with AM or PM. Default for twentyFourHour is false.
---@param time number
---@param twentyFourHour boolean
---@return string formattedTime
function textutils.formatTime(time, twentyFourHour)
  return ""
end

--- Prints tables in an ordered form. Each table is a row, the column width is auto-adjusted.
--- If it encounters a number instead of a table then sets the text color to it.
---@param table table
---@param table2 table
---@param ... table
function textutils.tabulate(table, table2, ...)
end

--- Prints tables in an ordered form, like textutils.tabulate. However, it waits for confirmation
--- before scrolling down.
---@param table table
---@param table2 table
---@param ... table
function textutils.pagedTabulate(table, table2, ...)
end

--- Prints string text onto the screen, but waits for confirmation (after at least freeLines have
--- been scrolled) before scrolling down further. Default for freeLines is 0.
---@param text string
---@param freeLines number|nil @optional
---@return number linesPrinted
function textutils.pagedPrint(text, freeLines)
  return 0
end

--- Returns a string representation of the data data for storage or transmission.
--- Also exists as textutils.serialise under CC 1.6 or later.
---@param data table|string|number|boolean|nil
---@return string serializedData
function textutils.serialize(data)
  return ""
end

--- Returns the data reassembled from string serializedData. Used mainly together
--- with textutils.serialize(). Also exists as textutils.unserialise under CC 1.6 or later.
---@param serializedData string
---@return any unserializedData
function textutils.unserialize(serializedData)
  return 0
end

--- Returns a JSON representation of the data data in a form of a string, mainly for command usage.
--- Also exists as textutils.serialiseJSON. Requires CC 1.7 or later.
---@param data table|string|number|boolean|nil
---@param unquoteKeys boolean @optional
---@return string serializedData
function textutils.serializeJSON(data, unquoteKeys)
  return ""
end

--- Returns a string representation of the data data for storage or transmission.
--- Also exists as textutils.serialize under CC 1.6 or later.
---@param data table|string|number|boolean|nil
---@return string serialisedData
function textutils.serialise(data)
  return ""
end

--- Returns the data reassembled from string serialisedData. Used mainly together
--- with textutils.serialise(). Also exists as textutils.unserialize under CC 1.6 or later.
---@param serialisedData string
---@return any unserialisedData
function textutils.unserialise(serialisedData)
  return 0
end

--- Returns a JSON representation of the data data in a form of a string, mainly for command usage.
--- Also exists as textutils.serializeJSON. Requires CC 1.7 or later.
---@param data table|string|number|boolean|nil
---@param unquoteKeys boolean
---@return string serialisedData
function textutils.serialiseJSON(data, unquoteKeys)
  return ""
end

--- Makes a string safe to encode into a url. Spaces are replaced with +s. Unsafe characters such as
--- '\', '£' and '}' are translated into ASCII code and preceded with a % for transmission.
--- For reference visit: [1].
---@param urlUnsafeString string
---@return string urlSafeString
function textutils.urlEncode(urlUnsafeString)
  return ""
end

--- Returns a list of strings that could be combined with the provided name to produce valid entries
--- in the specified environment. Requires version 1.74 or later.
---@param partialName string
---@param environment table|nil @optional
---@return table matches
function textutils.complete(partialName, environment)
  return {}
end
