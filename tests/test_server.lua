package.path = package.path .. ";../?.lua"

local server = require("furio.server")
local conf = require("furio.config")
conf.loadConf("./config/http.json")

server.start(conf.getConf())
