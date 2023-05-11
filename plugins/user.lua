return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "andreshazard/vim-freemarker",
    lazy = false,
  },
  {
    "vimwiki/vimwiki",
    lazy = false,
  },
  {
    "f-person/git-blame.nvim",
    lazy = false,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup {
        transparent_background = true,
      }
    end,
  },
}
