return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup {
    }
  end,
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "ibhagwan/fzf-lua",
    },
    config = function()
      require('neogit').setup {
      }
    end,
  },
}
