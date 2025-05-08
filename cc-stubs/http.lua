---@class http
http = {}


--- Sends a HTTP request to a website, asynchronously.
---@param url string
---@param postData string|nil @optional
---@param headers table|nil @optional
function http.request(url, postData, headers)
end

--- Sends a HTTP GET request to a website, synchronously.
---@param url string
---@param headers table|nil @optional
---@return table handle
function http.get(url, headers)
  return {}
end

--- Sends a HTTP POST request to a website, synchronously.
---@param url string
---@param postData string
---@param headers table|nil @optional
---@return table handle
function http.post(url, postData, headers)
  return {}
end

--- Checks if a URL is valid and is included in the HTTP whitelist.
---@param url string
---@return boolean success
---@return string|nil errorMessage
function http.checkURL(url)
  return true
end
