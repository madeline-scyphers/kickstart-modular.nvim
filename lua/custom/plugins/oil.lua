-- A vim-vinegar like file explorer that lets you edit your filesystem like a normal Neovim buffer.
-- https://github.com/stevearc/oil.nvim?tab=readme-ov-file#options
return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
        -- Leave netrw on
        require("oil").setup({default_file_explorer = false})
        -- Let oil open directories by default
        require("oil.config").setup({default_file_explorer = true})
        -- Turn off the directory browsing part of netrw manually
        if vim.fn.exists("#FileExplorer") then
          vim.api.nvim_create_augroup("FileExplorer", { clear = true })
        end
    end,
  }