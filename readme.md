# markdown-shortcuts.vim

Enables easy *emphasis* / **strong** / `in-line code block` and other syntaxes for editing Markdown files. Basically all the iA Writer shortcuts and more with customisability.

## Usage

`<Plug>` mappings are provided, assign them to any combinations you like, then put the mappings into your `.vimrc`. For example, if you use MacVim, put the following code into your `.gvimrc` (it is important to put them in `.gvimrc` instead of `.vimrc`):

```vim
if has('gui_macvim')
  " unset two original menu shortcuts to create new mappings
  macmenu &File.New\ Tab key=<nop>
  macmenu &Tools.Make key=<nop>

  " iA Writer Mode: On :)
  nmap <D-1> <Plug>(MarkdownToggleHeaderH1)
  nmap <D-2> <Plug>(MarkdownToggleHeaderH2)
  nmap <D-3> <Plug>(MarkdownToggleHeaderH3)
  nmap <D-4> <Plug>(MarkdownToggleHeaderH4)
  nmap <D-5> <Plug>(MarkdownToggleHeaderH5)
  nmap <D-6> <Plug>(MarkdownToggleHeaderH6)
  nmap <D-k> <Plug>(MarkdownInsertLink)
  nmap <D-b> <Plug>(MarkdownToggleBold)
  nmap <D-i> <Plug>(MarkdownToggleItalics)
  nmap <D-t> <Plug>(MarkdownToggleInlineCode)
endif
```

Or if you do not use MacVim, you can still create custom mappings like `nmap <leader>mi <Plug>(MarkdownToggleItalics)`. (If you really love iA Writer (like me :), consider also trying out [goyo.vim](https://github.com/junegunn/goyo.vim) and [limelight.vim](https://github.com/junegunn/limelight.vim))

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

