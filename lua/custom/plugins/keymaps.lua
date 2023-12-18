vim.keymap.set("n", "<leader>l",
  function()
    return vim.o.relativenumber and "<cmd>set norelativenumber<cr>" or "<cmd>set relativenumber<cr>"
  end, {
    remap = false,
    silent = true,
    expr = true,
    desc = "Toggle Relative Number"
  }
)

vim.keymap.set("n", "<leader>f",
  function()
    return vim.o.hlsearch and "<cmd>set nohlsearch<cr>" or "<cmd>set hlsearch<cr>"
  end, {
    remap = false,
    silent = true,
    expr = true,
    desc = "Toggle Search Highlight"
  }
)

return {}
