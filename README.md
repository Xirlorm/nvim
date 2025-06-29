# My Neovim Configuration

Tailored according to my workflow, this repository contains all the settings,
plugins, and customizations I use to make Neovim my code and text editing tool.

## Features

- Syntax highlighting
- Code completion for various programming languages.
- A clean and simple user interface.
- Integration with development tools.
- Automatic plugin installation.
- File explorer (disabled by default)

## Installation

To use my configuration, follow these steps:

1. Clone this repository to your local machine:

   ```shell
   git clone https://github.com/xirlorm/nvim ~/.config/nvim
   ```

2. Make sure you have Neovim installed. You can download it from [Neovim's official website](https://neovim.io/) or using a Package Manager.

3. Install the required plugins

   - Open Neovim:

     ```shell
     nvim
     ```
     NB: Package manager and plugins are automatically installed when opened for the first time.

4. Restart Neovim, You're all set!


## Customization

Feel free to customize my configuration to your liking. You can make changes in
the `init.lua` file or create your own configuration files in the
`~/.config/nvim/` directory. You can also modify configuration files for specific
plugins in `~/.config/nvim/lua/plugins/`

## Plugins available

Here are some of the key plugins I use in my Neovim setup:

- [Catppuccin](https://github.com/catppuccin/nvim): Colorscheme
- [Lazy.nvim](https://github.com/folke/lazy.nvim): Plugin Manager.
- [Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Syntax highlighting.
- [Neovim-lspconfig](https://github.com/neovim/nvim-lspconfig): LSP(Code completion) configurations
- [Mason](https://github.com/williamboman/mason.nvim): LSP Manager
- [Rust plugin](https://github.com/rust-lang/rust.vim)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim): Status line
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Dashboard-nvim](https://github.com/nvimdev/dashboard-nvim): Dashboard
- [Toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim): Manage terminal windows

## Language Servers Protocols preinstalled

These are the LSPs(Language Server Protocols) and linters installed automatically:

- `html`: HTML language server
- `cssls`: CSS language server
- `cssmodules_ls`: CSS modules
- `emmet_language_server`: Emmet(HTML completion)
- `eslint`: JavaScript/TypeScript linter
- `pyright`: Python Language server
- `tsserver`: JavaScript/TypeScript language server
- `gopls`: Go language server
- `jdtls`: Java language Server Protocols

NB: to avoid installation of language protocols you may not need please modify
    the _ensure\_installed_ field in `~/.config/nvim/lua/plugins/package-manager.lua`.

Happy coding with Neovim!

