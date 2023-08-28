return {
  "rmagatti/auto-session",
  name = "auto-session",
  lazy = false, -- load this plugin when neovim starts
  config = function()
    require("auto-session").setup {
      log_level = "info",
      -- do not use auto session in these folders
      auto_session_suppress_dirs = { "~/", "/", "~/Downloads/"},
    }
  end,
}
