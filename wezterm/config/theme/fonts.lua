local m = {}
local primary_font = "JetBrains Mono"
local default_size = 16
m.primary = {
  key  = primary_font,
  size = default_size,
  opts = { weight = 'Medium' }
}

m.italic = {
  key  = primary_font,
  size = default_size, 
  opts = { weight = 'Medium', italic = true },
}

return m
