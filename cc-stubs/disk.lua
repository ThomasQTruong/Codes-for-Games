---@class disk
disk = {}


--- Checks whether any item is in a disk drive.
---@param side string
---@return boolean present
function disk.isPresent(side)
  return true
end

--- Checks whether a Floppy Disk is in a disk drive.
---@param side string
---@return boolean hasData
function disk.hasData(side)
  return true
end

--- Gets the directory name where the contents of the floppy disk can be accessed.
---@param side string
---@return string path
function disk.getMountPath(side)
  return ""
end

--- Sets the floppy disk's label.
---@param side string
---@param label string
function disk.setLabel(side, label)
end

--- Gets the floppy disk's label.
---@param side string
---@return string label
function disk.getLabel(side)
  return ""
end

--- Gets the floppy disk's unique ID number.
---@param side string
---@return number id
function disk.getID(side)
  return 0
end

--- Checks whether a music disk is in the drive
---@param side string
---@return boolean hasAudio
function disk.hasAudio(side)
  return true
end

--- Gets the title of the music disc in the drive.
---@param side string
---@return string title
function disk.getAudioTitle(side)
  return ""
end

--- Starts playing the music disc in the drive.
---@param side string
function disk.playAudio(side)
end

--- Stops playing the music disc in the drive.
---@param side string
function disk.stopAudio(side)
end

--- Ejects any item currently in the drive, spilling it into the world as a loose item.
---@param side string
function disk.eject(side)
end
