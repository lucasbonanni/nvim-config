return {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "9.3.0", -- Pin Neorg to the latest stable release
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {}, -- Loads default behaviour
          ['core.concealer'] = {}, -- Adds pretty icons to your documents
        --   ['core.dirman'] = { -- Manages Neorg workspaces
        --     config = {
        --       workspaces = {
        --         notes = '~/notes', -- Make sure this directory exists!
        --       },
        --       default_workspace = 'notes',
        --     },
        --   },
        },
      }

      -- These settings help with folding and concealment
      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
}
