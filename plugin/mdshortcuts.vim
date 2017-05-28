" create commands for toggling
command! MarkdownToggleItalics :call mdshortcuts#ToggleSingleCharacterAroundWord('*')
command! MarkdownToggleInlineCode :call mdshortcuts#ToggleSingleCharacterAroundWord('`')

nnoremap <buffer> <Plug>(MarkdownToggleItalics) :MarkdownToggleItalics<CR>
nnoremap <buffer> <Plug>(MarkdownToggleInlineCode) :MarkdownToggleInlineCode<CR>

