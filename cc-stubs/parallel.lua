---@class parallel
parallel = {}


--- Runs all the functions at the same time, and stops when any of them returns.
---@param function1 function
---@param function2 function
---@param ... function
---@return number stoppedFunction
function parallel.waitForAny(function1, function2, ...)
  return 0
end

--- Runs all the functions at the same time, and stops when all of them have returned.
---@param function1 function
---@param function2 function
---@param ... function
function parallel.waitForAll(function1, function2, ...)
end
