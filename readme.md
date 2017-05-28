# markdown-shortcuts.vim

Better markdown editing in Vim.

## Usage

`<Plug>` mappings are provided, assign them to any key you like. Example:

```vim
nmap <leader>mi <Plug>(MarkdownToggleItalics)
nmap <leader>mb <Plug>(MarkdownToggleBold)
nmap <leader>mt <Plug>(MarkdownToggleInlineCode)
```

Or even better, on macOS you can map them to `<D-i>`, `<D-b>` etc., iA Writer, anyone?

## Installation

### Vundle

Put the following line into your `.vimrc`:

```vim
Plugin 'VVVFO/markdown-shortcuts'
```

Then source the `.vimrc` and run `:PluginInstall`.

### VimPlug

Put this into your `.vimrc`:

```vim
Plug 'VVVFO/markdown-shortcuts'
```

Then source the `.vimrc` and run `:PlugInstall`.

### Pathogen

Run the following command in your terminal:

```sh
cd ~/.vim/bundle
git clone http://github.com/VVVFO/markdown-shortcuts
```

### Neobundle

Place this in your `.vimrc`:

```vim
NeoBundle 'VVVFO/markdown-shortcuts'
```

Then source the file and run `:NeoBundleInstall`.

