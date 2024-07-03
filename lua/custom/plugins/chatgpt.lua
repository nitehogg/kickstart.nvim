local home = vim.fn.expand("$HOME");
local api_key_cmd = "gpg -q --decrypt " .. home .. "/.secret/chatgpt.key.gpg";

return {
  -- "jackMort/ChatGPT.nvim",
  -- event = "VeryLazy",
  -- config = function()
  --   require("chatgpt").setup({
  --     api_key_cmd = api_key_cmd
  --   })
  -- end,
  -- dependencies = {
  --   "MunifTanjim/nui.nvim",
  --   "nvim-lua/plenary.nvim",
  --   "folke/trouble.nvim",
  --   "nvim-telescope/telescope.nvim"
  -- }
};
