return {
    "yousefhadder/markdown-plus.nvim",
    ft = { "markdown", "text", "txt", "quarto" },  -- Load on multiple filetypes
    config = function()
    require("markdown-plus").setup({
        filetypes = { "markdown", "text", "txt", "quarto" },  -- Enable for these filetypes
    })
    end,
}
