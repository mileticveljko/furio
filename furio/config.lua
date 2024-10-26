local M = {}

local JSON = require("furio.JSON")

local confTable = { port = 8080, webroot = "." }

M.loadConf = function(path)
  local file = io.open( path, "r" )

  if file then
    local contents = file:read( "*a" )
    local table = JSON:decode(contents);

    if table.port then
      confTable.port = table.port
    end

    if table.webroot then
      confTable.webroot = table.webroot
    end

    io.close( file )
  end
end

M.getConf = function()
  return confTable
end

return M
