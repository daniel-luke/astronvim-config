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
        color_overrides = {
          all = {
            surface1 = "#666666",
          },
        },
      }
    end,
  },
  {
    "tomasky/bookmarks.nvim",
    lazy = false,
    config = function()
      require("bookmarks").setup {
        save_file = vim.fn.expand "$HOME/.bookmarks",
        keywords = {
          ["@todo"] = " ",
          ["@fix"] = " ",
          ["@note"] = "󰎚 ",
          ["@mark"] = " ",
        },

        on_attach = function(bufnr)
          local bm = require "bookmarks"
          local map = vim.keymap.set
          map("n", "mm", bm.bookmark_ann)
          map("n", "ml", ":Telescope bookmarks list <cr>")
          map("n", "mL", bm.bookmark_list)
          map("n", "mc", bm.bookmark_clean)
          map("n", "m[", bm.bookmark_prev)
          map("n", "m]", bm.bookmark_next)
          map("n", "mt", bm.bookmark_toggle)
        end,
      }
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function(plugin, opts)
      require "plugins.configs.telescope" (plugin, opts)

      local telescope = require "telescope"
      telescope.load_extension "bookmarks"
    end,
  },
  {
    "rcarriga/nvim-notify",
    config = function(plugin, opts)
      require "plugins.configs.notify" (plugin, opts)

      local notify = require "notify"

      notify.setup {
        background_colour = "#000000",
      }
    end,
  },
}
