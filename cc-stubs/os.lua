---@class osCC
os = {}


--- Returns the version of the OS the computer is running, which (for CraftOS) also contains the
--- version of ComputerCraft.
---@return string version
function os.version()
  return ""
end

--- Returns the unique ID of this computer.os.computerID() also behaves exactly the same as
--- os.getComputerID().
---@return number id
function os.computerID()
  return 0
end

--- Returns the unique ID of this computer.os.getComputerID() also behaves exactly the same as
--- os.computerID().
---@return number id
function os.getComputerID()
  return 0
end

--- Returns the label of this computer. os.computerLabel() also behaves exactly the same as
--- os.getComputerLabel().
---@return string|nil label
function os.computerLabel()
end

--- Returns the label of this computer. os.getComputerLabel() also behaves exactly the same as
--- os.computerLabel().
---@return string|nil label
function os.getComputerLabel()
end

--- Set the label of this computer.
---@param label string
function os.setComputerLabel(label)
end

--- An advanced way of starting programs. A started program will have a given environment table
--- which determines what functions it has available, as well as any variables it will be able to
--- access by default. You may prefer to use the Shell (API) unless you need to do something special.
---@param environment table
---@param programPath string
---@param arguments string|nil @optional
---@return boolean success
function os.run(environment, programPath, arguments)
  return true
end

--- Loads a Lua script as an API in its own namespace. It will be available to all programs that
--- run on the terminal.
---@param path string
---@return boolean success
function os.loadAPI(path)
  return true
end

--- Unloads a previously loaded API.
---@param name string
function os.unloadAPI(name)
end

--- Blocks until the computer receives an event, or if target-event is specified, will block until
--- an instance of target-event occurs. os.pullEvent(target-event) returns the event and any
--- parameters the event may have. If a target-event is specified, the computer will not break for
--- any other events (except termination).
---@param targetEvent string|nil @optional
---@return string event
---@return string param1
---@return string param2
---@return ...
function os.pullEvent(targetEvent)
  return "", "", ""
end

--- Advanced version of pullEvent(). Blocks until the computer receives an event, or if target-event
--- is specified, will block until an instance of target-event occurs. os.pullEventRaw(target-event)
--- returns the event and any parameters the event may have. Unlike os.pullEvent(target-event), this
--- function will not raise an error if a 'terminate' event is received.
---@param targetEvent string|nil @optional
---@return string event
---@return string param1
---@return string param2
---@return ...
function os.pullEventRaw(targetEvent)
  return "", "", ""
end

--- Adds an event to the event queue with the name event and the given parameters.
---@param event string
---@param param1 string
---@param param2 string
---@param ... string
function os.queueEvent(event, param1, param2, ...)
end

--- Returns the amount of time since the in-game computer was started.
---@return number time
function os.clock()
  return 0
end

--- Queues an event to be triggered after a number of seconds (timeout). The ID of the timer is
--- returned from this function to differentiate multiple timers. Timers are one-shot; once they
--- have fired an event you will need to start another one if you need a recurring timer.
---@param timeout number
---@return number timerID
function os.startTimer(timeout)
  return 0
end

--- Cancels a running timer, to prevent it throwing an event.
---@param timerID number
function os.cancelTimer(timerID)
end

--- Returns the current in-game time.
---@return number time
function os.time()
  return 0
end

--- Makes the system wait a number of seconds before continuing in the program. os.sleep(time) may
--- also be used as simply "sleep(time)".
---@param time number
function os.sleep(time)
end

--- Return the current in-game day (the number of days since the world was created).
---@return number day
function os.day()
  return 0
end

--- Queues an event to be triggered at the specified in-game time.
---@param time number
---@return number alarmID
function os.setAlarm(time)
  return 0
end

--- Cancels a pending alarm, to prevent it throwing an event.
---@param alarmID number
function os.cancelAlarm(alarmID)
end

--- Turns off the computer.
function os.shutdown()
end

--- Reboots the computer.
function os.reboot()
end
