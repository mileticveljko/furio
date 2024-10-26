local M = {}

local socket = require("socket")

local start = function(conf)
  if conf then
    print("Port: " .. conf.port)
    print("Webroot: " .. conf.webroot)
  end

  print("Server started")
end

M.start = start

return M
