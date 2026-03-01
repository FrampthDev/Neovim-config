return {
    {
    "mason-org/mason.nvim",
    config = function()
        require("mason").setup()
    end
},
{
{
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
},
{
    "neovim/nvim-lspconfig",
    vim.lsp.enable("lua_ls"),
    vim.lsp.enable("cpp_ls"),
    config = function()
        vim.keymap.set("n","gd",vim.lsp.buf.definition,{})
        vim.keymap.set("n","K",vim.lsp.buf.hover,{})
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

    end,
}
},
}

