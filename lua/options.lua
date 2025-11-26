-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
-- For more options, you can see `:help option-list`


-- Basic editor settings
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.cursorline = true     -- Highlight current line
vim.opt.showmatch = true      -- Show matching brackets
vim.opt.mouse = "a"           -- Enable mouse in all modes
vim.opt.termguicolors = true  -- Enable true color support
vim.opt.showmode = false      -- Don't show mode (shown in statusline)
vim.opt.signcolumn = "yes"    -- Always show the sign column
vim.opt.scrolloff = 10         -- Keep 8 lines above/below cursor
vim.opt.sidescrolloff = 8     -- Keep 8 columns left/right of cursor
vim.opt.linebreak = true      -- Wrap lines at convenient points

-- Indentation settings
vim.opt.expandtab = true    -- Use spaces instead of tabs
vim.opt.shiftwidth = 4      -- Number of spaces for auto indent
vim.opt.tabstop = 4         -- Number of spaces a tab counts for
vim.opt.softtabstop = 4     -- Number of spaces a tab counts for when editing
vim.opt.autoindent = true   -- Copy indent from current line when starting a new line
vim.opt.smartindent = true  -- Smart auto-indenting when starting a new line
-- vim.opt.breakindent = true  -- Enable break indent

-- Search settings
vim.opt.ignorecase = true   -- Ignore case when searching
vim.opt.smartcase = true    -- Override ignorecase if search pattern has uppercase
vim.opt.hlsearch = true     -- Highlight search results
vim.opt.incsearch = true    -- Show search matches as you type

-- Buffer/window settings
vim.opt.hidden = true       -- Allow switching from unsaved buffer
vim.opt.splitright = true   -- Open vertical splits to the right
vim.opt.splitbelow = true   -- Open horizontal splits below

-- Performance settings
vim.opt.lazyredraw = true   -- Don't redraw screen while executing macros
vim.opt.updatetime = 250    -- Faster updates for CursorHold and gitgutter
vim.opt.timeout = true      -- Enable timeout for key mappings
vim.opt.timeoutlen = 500    -- Time to wait for a key code sequence to complete

-- System integration
vim.opt.undofile = true            -- Persistent undo history
vim.opt.backup = false             -- No backup files
vim.opt.swapfile = false           -- No swap files

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true
