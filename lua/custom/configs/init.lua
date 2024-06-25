require("custom.configs.gitsigns")

vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.opt.cursorline = true
vim.opt.hlsearch = true


-- The leader configuration is also configured in the ~/.config/nvim/init.lua.
vim.keymap.set("n", "<leader>zl",
  function()
    return vim.o.relativenumber and "<cmd>set norelativenumber<cr>" or "<cmd>set relativenumber<cr>"
  end, {
    remap = false,
    silent = true,
    expr = true,
    desc = "Toggle Relative [L]ine Number"
  }
)

vim.keymap.set("n", "<leader>zh",
  function()
    return vim.o.hlsearch and "<cmd>set nohlsearch<cr>" or "<cmd>set hlsearch<cr>"
  end, {
    remap = false,
    silent = true,
    expr = true,
    desc = "Toggle Search [H]ighlight"
  }
)

vim.keymap.set("n", "<leader>zt", "<cmd>NvimTreeToggle<cr>", {
    remap = false,
    silent = true,
    desc = "Toggle [T]ree"
  }
)

vim.keymap.set("n", "<leader>zc", "<cmd>Telescope neoclip<cr>", {
    remap = false,
    silent = true,
    desc = "Neo[c]lip"
  }
)

vim.keymap.set("n", "<leader>zz", "<cmd>Lazy<cr>", {
    remap = false,
    silent = true,
    desc = "La[z]y"
  }
)


return {}
