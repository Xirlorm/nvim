# My Neovim Configuration

Tailored according to my workflow, this repository contains all the settings,
plugins, and customizations I use to make Neovim my code and text editing tool.

## Installation

To use my configuration, follow these steps:

1. Clone this repository to your local machine:

   ```shell
   git clone https://github.com/xirlorm/nvim.git ~/.config/nvim
   ```

2. Make sure you have Neovim installed. You can download it from [Neovim's official website](https://neovim.io/) or using a Package Manager.

3. Install the required plugins

   - Open Neovim:

     ```shell
     nvim
     ```
     Package manager and plugins are automatically installed.

4. Restart Neovim, You're all set!

## Features

- Syntax highlighting
- Code completion for various programming languages.
- A clean and simple user interface.
- Integration with development tools.
- Automatic plugin installation.
- File explorer (disabled by default)

## Customization

Feel free to customize my configuration to your liking. You can make changes in
the `init.lua` file or create your own configuration files in the `~/.config/nvim` directory.

## Plugins Used

Here are some of the key plugins I use in my Neovim setup:

- [Catppuccin](https://github.com/catppuccin/nvim): Colorscheme
- [Lazy.nvim](https://github.com/folke/lazy.nvim): Plugin Manager.
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Syntax highlighting.
- [Neovim-lspconfig](https://github.com/neovim/nvim-lspconfig): LSP(Code completion) configurations
- [Mason](https://github.com/williamboman/mason.nvim): LSP Manager
- [Rust plugin](https://github.com/rust-lang/rust.vim) (disabled)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim): Status line
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)

NB: Some plugins not mentioned above are disabled

## Language Server

These are the LSPs(language server protocols) installed automatically:

- `html`: HTML
- `cssls`: CSS
- `cssmodules_ls`
- `emmet_language_server`: Emmet(HTML completion)
- `eslint`: JavaScript
- `pyright`: Python
- `tsserver`: TypeScript

Happy coding with Neovim!
