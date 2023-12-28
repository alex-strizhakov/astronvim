-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- local directions = {
--   BEFORE_CURSOR = 1,
--   AFTER_CURSOR = 2,
-- }

local directions = require("hop.hint").HintDirection
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
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
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>fl"] = {
      ':let @*=fnamemodify(expand("%"), ":~:.") . ":" . line(".")<CR>',
      desc = "copy relative file path with line number",
    },
    ["<leader>fp"] = { ':let @*=fnamemodify(expand("%"), ":~:.")<CR>', desc = "copy relative file path" },
    ["f"] = {
      function() require("hop").hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true } end,
      desc = "search current line forward",
    },
    ["F"] = {
      function() require("hop").hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true } end,
      desc = "search current line backward",
    },
    ["<leader>jj"] = {
      function() require("hop").hint_char2() end,
      desc = "go to 2 chars",
    },
    ["<leader>fe"] = { "<cmd> Telescope resume <CR>", desc = "Telescope resume" },
    ["<leader>ie"] = { ":e .iex.exs<CR>", desc = "Edit iex file" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
