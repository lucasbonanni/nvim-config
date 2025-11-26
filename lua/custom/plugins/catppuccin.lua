return {    
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false,
        term_colors = true,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          functions = { "bold" },
          keywords = { "bold" },
          strings = { "italic" },
          variables = {},
          numbers = {},
          operators = {},
        },
        integrations = {
          render_markdown = true
        },
        highlight_overrides = {
        mocha = function(c)
            return {
              RenderMarkdownCode             = { bg = c.selection_inactive },
              RenderMarkdownCodeBorder       = { bg = c.selection_bg },
              RenderMarkdownCodeInline       = { fg = c.tag, bg = c.selection_inactive },
              RenderMarkdownH1               = { fg = c.accent },
              RenderMarkdownH2               = { fg = c.keyword },
              RenderMarkdownH3               = { fg = c.markup },
              RenderMarkdownH4               = { fg = c.entity },
              RenderMarkdownH5               = { fg = c.regexp },
              RenderMarkdownH6               = { fg = c.string },
              RenderMarkdownH1Bg             = { fg = c.bg, bg = c.accent },
              RenderMarkdownH2Bg             = { fg = c.bg, bg = c.keyword },
              RenderMarkdownH3Bg             = { fg = c.bg, bg = c.markup },
              RenderMarkdownH4Bg             = { fg = c.bg, bg = c.entity },
              RenderMarkdownH5Bg             = { fg = c.bg, bg = c.regexp },
              RenderMarkdownH6Bg             = { fg = c.bg, bg = c.string },
              ['@markup.heading']            = { fg = c.keyword, bold = true },
              ['@markup.heading.1']          = { fg = c.accent,  bold = true },
              ['@markup.heading.2']          = { fg = c.keyword, bold = true },
              ['@markup.heading.3']          = { fg = c.markup,  bold = true },
              ['@markup.heading.4']          = { fg = c.entity,  bold = true },
              ['@markup.heading.5']          = { fg = c.regexp,  bold = true },
              ['@markup.heading.6']          = { fg = c.string,  bold = true },
              ['@markup.strong']             = { fg = c.keyword, bold = true },
              ['@markup.italic']             = { fg = c.keyword, italic = true },
              ['@markup.list']               = { fg = c.vcs_added },
              ['@markup.raw']                = { fg = c.tag, bg = c.selection_inactive },
              ['@markup.quote']              = { fg = c.constant, italic = true },
            }
        end,
      },
        -- 
      })
      vim.cmd[[colorscheme catppuccin-mocha]]
    end,
  }
