vim.keymap.set("n", "<leader>nl",
  function()
    return vim.o.relativenumber and "<cmd>set norelativenumber<cr>" or "<cmd>set relativenumber<cr>"
  end, {
    remap = false,
    silent = true,
    expr = true,
    desc = "Toggle Relative [L]ine Number"
  }
)

vim.keymap.set("n", "<leader>nh",
  function()
    return vim.o.hlsearch and "<cmd>set nohlsearch<cr>" or "<cmd>set hlsearch<cr>"
  end, {
    remap = false,
    silent = true,
    expr = true,
    desc = "Toggle Search [H]ighlight"
  }
)

vim.keymap.set("n", "<leader>nt", "<cmd>NvimTreeToggle<cr>", {
    remap = false,
    silent = true,
    desc = "Toggle [T]ree"
  }
)

vim.keymap.set("n", "<leader>nc", "<cmd>Telescope neoclip<cr>", {
    remap = false,
    silent = true,
    desc = "Neo[c]lip"
  }
)

return {}
