-- ~/.config/nvim/lua/plugins/autoread.lua
return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.opt = opts.options.opt or {}

      -- When a file changes on disk (OpenCode edits), allow Neovim to re-read it
      opts.options.opt.autoread = true

      return opts
    end,
  },

  -- Force periodic checks when you refocus or re-enter buffers
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      opts.autocmds = opts.autocmds or {}
      opts.autocmds.autoread_checktime = {
        {
          event = { "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" },
          command = "checktime",
        },
      }
      return opts
    end,
  },
}
