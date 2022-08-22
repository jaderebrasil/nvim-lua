vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Utils/Requirements
    use "nvim-lua/plenary.nvim"

    -- Theme/Visual
    use "folke/tokyonight.nvim"
    use "rcarriga/nvim-notify"

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
    use {"tzachar/cmp-tabnine", after = "nvim-cmp", run="powershell ./install.ps1", requires = "hrsh7th/nvim-cmp"}

    use "williamboman/nvim-lsp-installer"
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

    -- Use specific branch, dependency and run lua file after load
	use {
        "glepnir/galaxyline.nvim",
        branch = "main",
        config = function() require("brasil.statusline") end,
        requires = {'kyazdani42/nvim-web-devicons', opt=true}
	}
end)