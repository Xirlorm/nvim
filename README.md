# My Mini Neovim Configuration

Tailored according to my workflow, this repository contains minified settings,
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

4. Restart Neovim, and you're all set!

## Features

- Syntax highlighting and code completion for various programming languages.
- A clean and simple user interface.
- Integration with popular development tools.
- Automatic plugin manager installation.

## Customization

Feel free to customize my configuration to your liking. You can make changes in
the `init.lua` file or create your own configuration files in the `~/.config/nvim` directory.

## Plugins Used

Here are some of the key plugins I use in my Neovim setup:

- [Lazy.nvim](https://github.com/folke/lazy.nvim): Plugin Manager.
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Syntax highlighting.
- [Neovim-lspconfig](https://github.com/neovim/nvim-lspconfig): LSP(Code completion) configurations
- [Mason](https://github.com/williamboman/mason.nvim): LSP Manager
- [Rust plugin](https://github.com/rust-lang/rust.vim)
- [mini.tabline](https://github.com/echasnovski/mini.tabline)
- [mini.statusline](https://github.com/echasnovski/mini.statusline): Status line

## Language Server

These are LSP(language server protocols) installed automatically:

- `html`: HTML
- `cssls`: CSS
- `emmet_ls`: Emmet(HTML completion)
- `eslint`: JavaScript
- `pyright`: Python
- `tsserver`: TypeScript

Happy coding with Neovim!
