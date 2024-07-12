return {
  "nvim-pack/nvim-spectre",
  cmd = "Spectre",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<leader>S",
      "<cmd>lua require('spectre').toggle()<CR>",
      desc = "Toggle [S]pectre",
    },
    {
      "<leader>sw",
      "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
      desc = "[S]earch current [w]ord",
    },
    {
      "<leader>sw",
      "<esc><cmd>lua require('spectre').open_visual()<CR>",
      mode = "v",
      desc = "[S]earch current [w]ord",
    },
    {
      "<leader>sp",
      "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>",
      desc = "Search on current file",
    },
  }
};
