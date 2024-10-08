return {
  "nvim-tree/nvim-tree.lua",
  version = "1.5.0",
  lazy = false,
  cmd = "NvimTreeToggle",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      update_focused_file = {
        enable = true,
      },
      filters = {
        exclude = {
          ".env"
        }
      },
      view = {
        width = 60
      }
    });
  end,
};
