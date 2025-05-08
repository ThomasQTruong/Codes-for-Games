--- Disable false positive warnings.
---@diagnostic disable: duplicate-set-field
---@diagnostic disable-next-line: unknown-diag-code
---@diagnostic disable: access-invisible

---@class bit
bit = {}


--- Shifts a number left by a specified number of bits.
---@param n number
---@param bits number
---@return number value
function bit.blshift(n, bits)
  return 0
end

--- Shifts a number right arithmetically by a specified number of bits.
---@param n number
---@param bits number
---@return number value
function bit.brshift(n, bits)
  return 0
end

--- Shifts a number right logically by a specified number of bits.
---@param n number
---@param bits number
---@return number value
function bit.blogic_rshift(n, bits)
  return 0
end

--- Computes the bitwise exclusive OR of two numbers.
---@param m number
---@param n number
---@return number value
function bit.bxor(m, n)
  return 0
end

--- Computes the bitwise OR of two numbers.
---@param m number
---@param n number
---@return number value
function bit.bor(m, n)
  return 0
end

--- Computes the bitwise AND of two numbers.
---@param m number
---@param n number
---@return number value
function bit.band(m, n)
  return 0
end

--- Computes the bitwise NOT of a numbers.
---@param n number
---@return number value
function bit.bnot(n)
  return 0
end

---@deprecated
--- Converts a number to an array (numerically-indexed table) containing the corresponding binary
--- bit values.
---@param n number
---@return table bit_tbl
function bit.tobits(n)
  return {}
end

---@deprecated
--- Converts an array (numerically-indexed table) of 0 and 1 values representing a number in binary
--- into that number.
---@param bit_tbl table
---@return number value
function bit.tonumb(bit_tbl)
  return 0
end
