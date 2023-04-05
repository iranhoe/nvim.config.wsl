require("iranhoe.remap")
require("iranhoe.set")

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_win = has "win32"

if (is_win) then 
  print("pending")
end
