return {
  "rmagatti/auto-session",
  version = "*",
  lazy = false,
  config = function()
    require("auto-session").setup {
      log_level = "error",
      auto_session_suppress_dirs = {
        "~/",
        "~/Projects",
        "~/Downloads",
        "/"
      }
    }
  end,
}
