return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.oxocarbon-nvim" },
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.github-nvim-theme" },
  { import = "astrocommunity.colorscheme.mellow-nvim" },
  { import = "astrocommunity.completion.copilot-lua" },
  { -- further customize the options set by the community
    "zbirenbaum/copilot.lua",
    opts = {
      cmd = "Copilot",
      event = "InsertEnter",
      suggestion = {
        keymap = {
          auto_trigger = true,
          accept = "<C-o>",
          accept_word = "<C-k>",
          accept_line = "<C-l>",
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
    },
  },
  {
    "olimorris/onedarkpro.nvim",
    opts = {

      highlights = {
        ["@variable.elixir"] = { fg = "#ABB2BF" },
        ["@symbol.elixir"] = { fg = "${blue}", bold = true },
        ["@type.elixir"] = { fg = "${red}" },
        ["@function.call.elixir"] = { fg = "#D4D8DF" },
        ["@constant.elixir"] = { fg = "${red}" },
        ["@constant.builtin.elixir"] = { fg = "${blue}" },
        ["@boolean.elixir"] = { fg = "${blue}" },
        ["@punctuation.bracket.elixir"] = { fg = "${purple}" },
        ["@keywotd.elixir"] = { fg = "${green}" },
        ["@attribute.elixir"] = { fg = "${green}" },
      },
    },
  },
}
