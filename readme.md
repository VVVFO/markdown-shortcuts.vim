# markdown-shortcuts.vim

Enables easy *emphasis* / **strong** / `in-line code block` and other syntaxes for editing Markdown files. Basically all the iA Writer shortcuts and more with customisability.

## Usage

`<Plug>` mappings are provided, assign them to any key you like, then put the mappings into your `.vimrc`. For example:

```vim
nmap <leader>mi <Plug>(MarkdownToggleItalics)
nmap <leader>mb <Plug>(MarkdownToggleBold)
nmap <leader>mt <Plug>(MarkdownToggleInlineCode)
nmap <leader>m1 <Plug>(MarkdownToggleHeaderH1)
nmap <leader>m2 <Plug>(MarkdownToggleHeaderH2)
nmap <leader>m3 <Plug>(MarkdownToggleHeaderH3)
nmap <leader>m4 <Plug>(MarkdownToggleHeaderH4)
nmap <leader>m5 <Plug>(MarkdownToggleHeaderH5)
nmap <leader>m6 <Plug>(MarkdownToggleHeaderH6)
```

Or even better, on MacVim you can map them to `<D-i>` etc. (If you really love iA Writer (like me :), consider also trying out [goyo.vim](https://github.com/junegunn/goyo.vim) and [limelight.vim](https://github.com/junegunn/limelight.vim))

## Installation

### Vundle

Put the following line into your `.vimrc`:

```vim
Plugin 'VVVFO/markdown-shortcuts.vim'
```

Then source the `.vimrc` and run `:PluginInstall`.

### VimPlug

Put this into your `.vimrc`:

```vim
Plug 'VVVFO/markdown-shortcuts.vim'
```

Source the `.vimrc` then run `:PlugInstall`.

### Pathogen

Run the following command in your terminal:

```sh
cd ~/.vim/bundle
git clone http://github.com/VVVFO/markdown-shortcuts.vim
```

### Neobundle

Place this in your `.vimrc`:

```vim
NeoBundle 'VVVFO/markdown-shortcuts.vim'
```

Then source the file and run `:NeoBundleInstall`.

