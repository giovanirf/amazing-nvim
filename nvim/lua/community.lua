return {
  "AstroNvim/astrocommunity",

  -- Language packs
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.golangci-lint" }, -- Go lint via langserver
  { import = "astrocommunity.pack.typescript" }, -- TS/JS/TSX support (vtsls)
  { import = "astrocommunity.pack.eslint" }, -- ESLint support

  -- Optional, but commonly useful for React projects:
  -- { import = "astrocommunity.pack.tailwindcss" }, -- if you use Tailwind
  -- { import = "astrocommunity.pack.html-css" },    -- html/css/emmet for web work

  -- (Optional) Neovim-side OpenCode integration (not required for tmux workflow)
  { import = "astrocommunity.ai.opencode-nvim" },
}
