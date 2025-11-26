-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
local map = vim.keymap.set

map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, {
    desc = 'Open diagnostic [Q]uickfix list'
})

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', {
    desc = 'Exit terminal mode'
})

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
map('n', '<C-h>', '<C-w><C-h>', {
    desc = 'Move focus to the left window'
})
map('n', '<C-l>', '<C-w><C-l>', {
    desc = 'Move focus to the right window'
})
map('n', '<C-j>', '<C-w><C-j>', {
    desc = 'Move focus to the lower window'
})
map('n', '<C-k>', '<C-w><C-k>', {
    desc = 'Move focus to the upper window'
})

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- Window resizing
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Increase window width' })


vim.api.nvim_create_augroup('OrgKeymaps', {
    clear = true
})
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'org',
    group = 'OrgKeymaps',
    callback = function()
        -- Capture (for templates)
        -- <leader>oc will bring up your template menu
        map('n', '<leader>oc', function()
            require("orgmode").action("capture.prompt")
        end, {
            desc = "Org capture"
        })

        -- Task Management (Cycling TODO state)
        -- With your cursor on a task, press <leader>t to cycle
        -- from TODO -> NEXT -> DONE
        -- map("n", "<leader>t", function()
        --     require("orgmode").action("org_mappings.org_todo")
        -- end, {
        --     desc = "Toggle TODO",
        --     buffer = true
        -- })
        -- Add a custom keymap to mark todo as DONE (alternative approach)

        -- You can also use the default: C-c C-t in normal or insert mode.
        -- map('n', '<leader>md', function()
        --     -- This will set the current headline to DONE state
        --     vim.cmd("OrgTodoDone")
        -- end, {
        --     buffer = true,
        --     desc = "Mark todo as DONE"
        -- })
        -- -- Agenda view
        -- map('n', '<leader>oa', '<Cmd>OrgAgenda<CR>', {
        --     desc = 'Org Agenda',
        --     buffer = true
        -- })

        -- Increase/Decrease heading level
        -- map("n", "<leader>>", function()
        --     require("orgmode").action("org_mappings.org_do_promote")
        -- end, {
        --     desc = "Promote heading",
        --     buffer = true
        -- })
        -- map("n", "<leader><", function()
        --     require("orgmode").action("org_mappings.org_do_demote")
        -- end, {
        --     desc = "Demote heading",
        --     buffer = true
        -- })
        -- map("n", "<leader>os", function()
        --     require("orgmode").action("org_mappings.org_schedule")
        -- end, {
        --     desc = "Set schedule"
        -- })
        -- map("n", "<leader>od", function()
        --     require("orgmode").action("org_mappings.org_deadline")
        -- end, {
        --     desc = "Set deadline"
        -- })

    end
})
