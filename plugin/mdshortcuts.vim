" create commands for toggling
command! MarkdownToggleItalics :call mdshortcuts#ToggleSingleCharacterAroundWord('*')
command! MarkdownToggleInlineCode :call mdshortcuts#ToggleSingleCharacterAroundWord('`')
command! MarkdownToggleBold :call mdshortcuts#ToggleMultipleCharacterAroundWord(2, '*')

nnoremap <buffer> <Plug>(MarkdownToggleItalics) :MarkdownToggleItalics<CR>
nnoremap <buffer> <Plug>(MarkdownToggleInlineCode) :MarkdownToggleInlineCode<CR>
nnoremap <buffer> <Plug>(MarkdownToggleBold) :MarkdownToggleBold<CR>
