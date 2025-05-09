return {
  { "edkolev/tmuxline.vim" },
  { "vim-airline/vim-airline" },
  { "vim-airline/vim-airline-themes" },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme catppuccin]])
    end
  }
}
