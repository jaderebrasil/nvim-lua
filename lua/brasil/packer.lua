vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Utils/Requirements
    use "nvim-lua/plenary.nvim"

    -- Theme/Visual
    -- use "folke/tokyonight.nvim"
    use "gruvbox-community/gruvbox"
    use "rcarriga/nvim-notify"

    use {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup {
        }
      end
    }

    -- useful
    use "sbdchd/neoformat"
    use "nvim-telescope/telescope.nvim"
    use "mbbill/undotree"

    -- lsp/completion stuff
    use "neovim/nvim-lspconfig"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/nvim-cmp"

    if vim.fn.has('unix') then
        use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
    else
        use {"tzachar/cmp-tabnine", after = "nvim-cmp", run="powershell ./install.ps1", requires = "hrsh7th/nvim-cmp"}
    end

    -- use "williamboman/nvim-lsp-installer"
    use "onsails/lspkind-nvim"

    use "glepnir/lspsaga.nvim"
    use "simrat39/symbols-outline.nvim"
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"

    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use "nvim-treesitter/playground"
    use "romgrk/nvim-treesitter-context"

    use "mfussenegger/nvim-dap"
    use "rcarriga/nvim-dap-ui"
    use "theHamsta/nvim-dap-virtual-text"

    -- Data Science
    use { "dccsillag/magma-nvim", run = ":UpdateRemotePlugins" }
    use "JuliaEditorSupport/julia-vim"
    use "kdheepak/JuliaFormatter.vim"
    use "untitled-ai/jupyter_ascending.vim"

    -- Use specific branch, dependency and run lua file after load
	use {
        "glepnir/galaxyline.nvim",
        branch = "main",
        config = function() require("brasil.statusline") end,
        requires = {'kyazdani42/nvim-web-devicons', opt=true}
	}
end)
