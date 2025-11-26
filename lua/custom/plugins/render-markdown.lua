return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    config = function()
      require('render-markdown').setup({
        file_types = { 'markdown', 'vimwiki', 'quarto' },
        heading = {
          width = "block",
          left_pad = 1,
          right_pad = 0,
          position = "right",
          icons = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          backgrounds = {
            "MiniStatusLineModeNormal",
            "MiniStatusLineModeInsert",
            "MiniStatusLineModeReplace",
            "MiniStatusLineModeVisual",
            "MiniStatusLineModeCommand",
            "MiniStatusLineModeOther",
          },
          sign = false,
        },
        latex = {
            enabled = true,
            render_modes = false,
            converter = { 'utftex', 'latex2text' },
            highlight = 'RenderMarkdownMath',
            position = 'center',
            top_pad = 0,
            bottom_pad = 0,
        },
        code = {
          sign = false,
          border = "thin",
          position = "right",
          width = "block",
          above = "▁",
          below = "▔",
          language_left = "█",
          language_right = "█",
          language_border = "▁",
          left_pad = 2,
          right_pad = 5,
        },
      })
    end,
}
