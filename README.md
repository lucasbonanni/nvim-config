# Neovim Configuration

A modern Neovim setup based on [kickstart-modular.nvim](https://github.com/FanchenBao/kickstart-modular.nvim) with custom plugins and enhancements.

## Features

- **Plugin Management**: Lazy loading with [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Theme**: Catppuccin color scheme
- **Markdown Support**: Enhanced markdown rendering and org-mode support
- **Git Integration**: Git signs and status indicators
- **LSP & Completion**: Full language server protocol support
- **Navigation**: Telescope fuzzy finder and Neo-tree file browser
- **Quality**: Linting, formatting, and debugging support

## Structure

```
lua/
├── keymaps.lua           # Custom key mappings
├── options.lua           # Editor settings
├── lazy-plugins.lua      # Plugin specifications
└── custom/
    └── plugins/          # Custom plugin configurations
        ├── catppuccin.lua
        ├── norg.lua
        ├── render-markdown.lua
        └── markdown-plus.lua
```

## Installation

1. Clone this repository to your Neovim config directory:
   ```bash
   git clone https://github.com/lucasbonanni/nvim-config ~/.config/nvim
   ```

2. Start Neovim and let lazy.nvim install plugins:
   ```bash
   nvim
   ```

3. Run `:Lazy` to manage plugins

## Key Features

### Plugins Included

- **telescope.nvim**: Fuzzy finder for files, buffers, and more
- **neo-tree.nvim**: Tree-style file explorer
- **catppuccin**: Beautiful color scheme
- **gitsigns**: Git integration
- **which-key**: Command palette and keybinding guide
- **nvim-lspconfig**: Language server support
- **cmp**: Autocompletion engine
- **nvim-treesitter**: Better syntax highlighting
- **render-markdown**: Enhanced markdown and org-mode rendering

### Custom Keybindings

- `<leader>` = Space
- `<C-h/j/k/l>`: Navigate between windows
- `<leader>ff`: Find files
- `<leader>fg`: Find by grep
- `<leader>fb`: Find buffers
- `<leader>bn`: Next buffer
- `<leader>bp`: Previous buffer
- `<leader>bd`: Delete buffer

## Configuration

### Quick Customization

Edit these files to customize your setup:

- `lua/options.lua`: Editor options (indentation, line numbers, etc.)
- `lua/keymaps.lua`: Key mappings
- `lua/lazy-plugins.lua`: Add or remove plugins
- `lua/custom/plugins/`: Plugin-specific configurations

### Adding Plugins

Add new plugins to the spec in `lua/lazy-plugins.lua`:

```lua
require('lazy').setup({
  'owner/plugin-name',
  -- or with configuration:
  {
    'owner/plugin-name',
    config = function()
      require('custom.plugins.plugin-name')
    end,
  },
})
```

## System Requirements

- Neovim >= 0.9
- Git
- A modern terminal with true color support

## Links 
- [Jannik Buhr - config](https://github.com/jmbuhr/nvim-config)
