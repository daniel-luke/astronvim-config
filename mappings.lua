-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>m"] = { desc = " Bookmarks" },
    ["<leader>z"] = { desc = " Notes" },
    ["<leader>zz"] = { "<cmd>Telekasten panel<cr>", desc = " Notes Panel" },
    ["<leader>zf"] = { "<cmd>Telekasten find_notes<cr>", desc = "  Find Note By Name" },
    ["<leader>zs"] = { "<cmd>Telekasten search_notes<cr>", desc = " Search Notes" },
    ["<leader>zb"] = { "<cmd>Telekasten show_backlinks<cr>", desc = "󰌷 Seach Backlinks" },
    ["<leader>zn"] = { "<cmd>Telekasten new_note<cr>", desc = " New Note" },
    ["<leader>zl"] = { "<cmd>Telekasten follow_link<cr>", desc = "󰁔 Follow Link" },
    ["<leader>zd"] = { "<cmd>Telekasten goto_today<cr>", desc = "  Daily Note" },

    ["<leader>XXX"] = { "<cmd>call delete(@%) | bdelete!<cr>", desc = "DELETE FILE FROM SYSTEM AND BUFFER" },
  },
  t = {
    -- setting a mapping to false will disable it
    ["<leader>n"] = false,
  },
}
