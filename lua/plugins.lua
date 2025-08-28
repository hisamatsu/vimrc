return {
  { -- colorscheme
    'blueshirts/darcula',
    config = function()
      vim.cmd([[colorscheme darcula]])
    end
  },
  'editorconfig/editorconfig-vim',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('config/lualine')
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config/gitsigns')
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('config/comment')
    end
  },
  {
   "ibhagwan/fzf-lua",
   -- optional for icon support
   dependencies = { "nvim-tree/nvim-web-devicons" },
   config = function()
     -- calling `setup` is optional for customization
     require("fzf-lua").setup({})
   end
  },
  {
   'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("config/oil")
    end
  },
 {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      -- calling `setup` is optional for customization
      require("config/lazygit")
    end
  }
}
