--[[
 - wget.lua
 - The wget unix command.
 - Put into bin directory.
 - Relies on startup.lua OR current working directory.
 -
 - Copyright (c) 2025, Thomas Truong.
--]]

-- Obtain URL from command-line argument.
local url = ...
if not url then
  print("Usage: wget <url> [output]")
  return
end

-- Obtain output name from command-line argument or parse the URL for the name.
local output = select(2, ...) or url:match("([^/]+)$")
if not output then
  print("Error: could not determine output file name")
  return
end

-- Check if it is a lua file (remove .lua from name; not necessary).
if output:sub(-4) == ".lua" then
  output = output:sub(1, -5)
end

-- Obtain, read, and write the file from the URL.
local response = http.get(url)
if response then
  local contents = response.readAll()
  response.close()

  local file = fs.open(shell.resolve(output), "w")
  file.write(contents)
  file.close()

  print(output .. ": successfully downloaded")
else
  print(output .. ": failed to download")
end
