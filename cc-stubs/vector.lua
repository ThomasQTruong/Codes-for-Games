---@class vector
vector = {}
local vectorA = {}


--- Creates a vector.
---@param x number
---@param y number
---@param z number
---@return vector vector
function vector.new(x, y, z)
  return vector.new(0, 0, 0)
end

--- Adds vectorB to vectorA and returns the resulting vector.
--- Can also be used by writing vectorA + vectorB.
---@param vectorB vector
---@return vector vectorC
function vectorA:add(vectorB)
  return vector.new(0, 0, 0)
end

--- Subtracts vectorB from vectorA and returns the resulting vector.
--- Can also be used by writing vectorA - vectorB.
---@param vectorB vector 
---@return vector vectorC
function vectorA:sub(vectorB)
  return vector.new(0, 0, 0)
end

--- Scalar multiplies vectorA with n and returns the resulting vector.
--- Can also be used by writing vectorA * n.
---@param n number
---@return vector vectorC
function vectorA:mul(n)
  return vector.new(0, 0, 0)
end

--- Returns the dot product of vectorA and vectorB.
---@param vectorB vector 
---@return number product
function vectorA:dot(vectorB)
  return 0
end

--- Returns the vector which resulted in the cross product of vectorA and vectorB.
---@param vectorB vector 
---@return vector vectorC
function vectorA:cross(vectorB)
  return vector.new(0, 0, 0)
end

--- Returns the vector's length.
---@return number length
function vectorA:length()
  return 0
end

--- Normalizes the vector and returns the result as a new vector.
---@return number normalized
function vectorA:normalize()
  return 0
end

--- Rounds the vector coordinates to the nearest integers and returns the result as a new vector.
---@return vector rounded
function vectorA:round()
  return vector.new(0, 0, 0)
end

--- Returns a string representation of the vector in the form of "x,y,z".
---@return string vectorString
function vectorA:tostring()
  return ""
end
