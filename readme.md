# markdown-shortcuts.vim

Enables easy italicize/boldify/inline-codify for editing Markdown files. iA Writer, anyone?

## Usage

`<Plug>` mappings are provided, assign them to any key you like. Example:

```vim
nmap <leader>mi <Plug>(MarkdownToggleItalics)
nmap <leader>mb <Plug>(MarkdownToggleBold)
nmap <leader>mt <Plug>(MarkdownToggleInlineCode)
```

Or even better, on macOS you can map them to `<D-i>`, `<D-b>` etc. (If you really love iA Writer, consider trying [goyo.vim](https://github.com/junegunn/goyo.vim) and [limelight.vim](https://github.com/junegunn/limelight.vim)).

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

