local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
local uv = vim.uv or vim.loop

-- Auto-install lazy.nvim if not present
if not uv.fs_stat(lazypath) then
  print('Installing lazy.nvim....')
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
  print('Done.')
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  ---
  -- List of plugins...
  ---
	-- colorscheme
	{
	 "sainnhe/everforest",
	 config = function()
		 vim.cmd('colorscheme everforest')
	 end,
	},
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		run = ':TSUpdate'
	},
	-- telescope
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},
	-- lsp
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
})

