local gitsigns = require('gitsigns');

local module = {}

function module.setup(on_attach)
  gitsigns.setup {
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 750,
    },
  }
end

return module;
