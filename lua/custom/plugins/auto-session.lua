return {
  "rmagatti/auto-session",
  version = "*",
  lazy = false,
  config = function()
    require("auto-session").setup {
      log_level = "error",
      auto_session_enable_last_session = false,
      auto_session_enabled = true,
      auto_save_enabled = true,
      auto_restore_enabled = true,
    }
  end,
}
