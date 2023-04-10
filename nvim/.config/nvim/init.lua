require('andotlua.base')
require('andotlua.highlights')
require('andotlua.maps')
require('andotlua.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
  require('andotlua.macos')
end
if is_win then
  require('andotlua.windows')
end
if is_wsl then
  require('andotlua.wsl')
end