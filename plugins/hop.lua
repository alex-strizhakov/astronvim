return {
  "phaazon/hop.nvim",
  branch = "v2",
  lazy = false,
  -- init = mappings.load_mappings "hop",
  config = function() require("hop").setup() end,
}
