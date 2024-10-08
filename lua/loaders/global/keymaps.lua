-- The leader configuration is also configured in the ~/.config/nvim/init.lua.


vim.keymap.set("n", "<leader>o",
  function()
    local buffer_path = vim.api.nvim_buf_get_name(0);
    return "<cmd>!open " .. buffer_path .. "<cr>";
  end, {
    remap = false,
    silent = true,
    expr = true,
    desc = "[O]pen buffer externally"
  }
)


-- [V]im
vim.keymap.set("n", "<leader>vl",
  function()
    return vim.o.relativenumber and "<cmd>set norelativenumber<cr>" or "<cmd>set relativenumber<cr>"
  end, {
    remap = false,
    silent = true,
    expr = true,
    desc = "Toggle Relative [L]ine Number"
  }
)

vim.keymap.set("n", "<leader>vh",
  function()
    return vim.o.hlsearch and "<cmd>set nohlsearch<cr>" or "<cmd>set hlsearch<cr>"
  end, {
    remap = false,
    silent = true,
    expr = true,
    desc = "Toggle Search [H]ighlight"
  }
)

vim.keymap.set("n", "<leader>vt", "<cmd>NvimTreeToggle<cr>", {
  remap = false,
  silent = true,
  desc = "Toggle [T]ree"
})

vim.keymap.set("n", "<leader>vc", "<cmd>Telescope neoclip<cr>", {
  remap = false,
  silent = true,
  desc = "Neo[c]lip"
})

vim.keymap.set("n", "<leader>vz", "<cmd>Lazy<cr>", {
  remap = false,
  silent = true,
  desc = "La[z]y"
})

vim.keymap.set("n", "<leader>vm", "<cmd>Mason<cr>", {
  remap = false,
  silent = true,
  desc = "[M]ason"
})

vim.keymap.set("n", "<leader>vr", "<cmd>luafile $MYVIMRC<cr>", {
  remap = false,
  silent = true,
  desc = "[R]eload Config"
})


-- [B]uffer
vim.keymap.set("n", "<leader>bp", "<cmd>bp<cr>", {
  remap = false,
  silent = true,
  desc = "[P]revious Buffer"
})

vim.keymap.set("n", "<leader>bn", "<cmd>bn<cr>", {
  remap = false,
  silent = true,
  desc = "[N]ext Buffer"
})

vim.keymap.set("n", "<leader>bw", "<cmd>w<cr>", {
  remap = false,
  silent = true,
  desc = "[W]rite Buffer"
})

vim.keymap.set("n", "<leader>bl", "<cmd>e<cr>", {
  remap = false,
  silent = true,
  desc = "[R]eload"
})

vim.keymap.set("n", "<leader>bh", "<cmd>bd<bar>b#<cr>", {
  remap = false,
  silent = true,
  desc = "[H]ard Reload"
})

vim.keymap.set("n", "<leader>br", "<cmd>redraw!<cr>", {
  remap = false,
  silent = true,
  desc = "[R]edraw"
})

vim.keymap.set("n", "<leader>bdd", "<cmd>bd<cr>", {
  remap = false,
  silent = true,
  desc = "[D]elete Buffer"
})

vim.keymap.set("n", "<leader>bdf", "<cmd>bd!<cr>", {
  remap = false,
  silent = true,
  desc = "[D]elete Buffer [F]orce"
})


-- Delete all | open latest | delete latest (no name).
vim.keymap.set("n", "<leader>bdo", "<cmd>%bd|e#|bd#<cr>", {
  remap = false,
  silent = true,
  desc = "[D]elete [O]ther Buffers"
})

vim.keymap.set("n", "<leader>bda", "<cmd>%bd|bd#<cr>", {
  remap = false,
  silent = true,
  desc = "[D]elete [A]ll Buffers"
})

vim.keymap.set("n", "<leader>bf", "<C-g>", {
  remap = false,
  silent = true,
  desc = "Buffer [F]ilename"
})


-- [S]earch
vim.keymap.set("n", "<leader>sp", "<cmd>Telescope pickers<cr>", {
  remap = false,
  silent = true,
  desc = "[S]earch [P]ickers"
})

vim.keymap.set("n", "<leader>sa",
  "<cmd>lua require('telescope.builtin').find_files({ cwd = require('telescope.utils').buffer_dir() })<cr>", {
    remap = false,
    silent = true,
    desc = "[S]earch [A]ctive Directory"
  })


-- [C]ode
-- Use K
-- vim.keymap.set("n", "<leader>cc", "<cmd>lua vim.lsp.buf.hover()<cr>", {
--   remap = false,
--   silent = true,
--   desc = "[C]ontext"
-- })
