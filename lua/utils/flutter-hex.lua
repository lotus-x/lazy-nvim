local utils = require("ccc.utils")
local convert = require("ccc.utils.convert")

---@class ccc.ColorOutput
local FlutterHex = {
  name = "FlutterHex",
  pattern = "Color(0x%02x%02x%02x%02x)",
}

function FlutterHex.str(RGB, A)
  local R, G, B = convert.rgb_format(RGB)
  if A then
    A = utils.round(A * 255)
    return FlutterHex.pattern:format(A, R, G, B)
  else
    return FlutterHex.pattern:format(255, R, G, B)
  end
end

return FlutterHex
