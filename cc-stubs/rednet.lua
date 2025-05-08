---@class rednet
rednet = {}


--- Tells the computer that the side can be used for networking.
---@param side string
function rednet.open(side)
end

--- Tells the computer that the side can no longer be used for networking.
---@param side string
function rednet.close(side)
end

--- Sends a message "intended" for another system with a specific ID, using the currently opened
--- sides. The receiverID is the ID number (note - not a string) of the computer you're sending the
--- message to. The types that can be sent as the message vary depending on the version of
--- ComputerCraft in use.
---@param receiverID number
---@param message any
---@param protocol string|nil @optional
function rednet.send(receiverID, message, protocol)
end

--- Sends the message to all connected and open computers.
---@param message any
---@param protocol string|nil @optional
function rednet.broadcast(message, protocol)
end

--- Waits until a rednet message of the specified protocol has been received, or until timeout
--- seconds have passed. Leave all arguments empty to wait for any message indefinitely. If only a
--- single, numerical argument is passed, will wait that many seconds for a message of any protocol.
--- Versions of ComputerCraft prior to 1.6 may return the distance to the transmitting computer -
--- 1.6 or later returns message protocols instead, though distance can still be obtained via direct
--- use of the Modem API.
---@param protocolFilter string|nil @optional
---@param timeout number|nil @optional
---@return number senderID
---@return any message
---@return number|string distanceOrProtocol
function rednet.receive(protocolFilter, timeout)
  return 0, 0, 0
end

--- Returns true if the wireless modem is open.
---@param side string
---@return boolean isOpen
function rednet.isOpen(side)
  return true
end

--- Registers hostname against protocol for the purposes of rednet.lookup().
--- Only available in ComputerCraft 1.6 and above.
---@param protocol string
---@param hostname string
function rednet.host(protocol, hostname)
end

--- Unregisters hostname from protocol. Only available in ComputerCraft 1.6 and above.
---@param protocol string
---@param hostname string
function rednet.unhost(protocol, hostname)
end

--- Searches the local network for systems registered with a matching hostname and/or protocol, and
--- returns matching IDs found. Only available in ComputerCraft 1.6 and above.
---@param protocol string
---@param hostname string|nil @optional
---@return number ID1
---@return number ID2
---@return number ...
function rednet.lookup(protocol, hostname)
  return 0, 0
end

--- Internal use function - runs automatically and does not need to be called directly. Waits for
--- modem_message events to appear within the event queue and generates corresponding rednet_message
--- events for use with this API. Also responds to rednet.lookup() requests.
function rednet.run()
end
