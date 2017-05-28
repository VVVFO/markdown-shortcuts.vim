" create commands for toggling
command! MarkdownToggleItalics :call mdshortcuts#ToggleSingleCharacterAroundWord('*')
command! MarkdownToggleInlineCode :call mdshortcuts#ToggleSingleCharacterAroundWord('`')
command! MarkdownToggleBold :call mdshortcuts#ToggleMultipleCharacterAroundWord(2, '*')
command! MarkdownToggleHeaderH1 :call mdshortcuts#ToggleHeaderHn(1)
command! MarkdownToggleHeaderH2 :call mdshortcuts#ToggleHeaderHn(2)
command! MarkdownToggleHeaderH3 :call mdshortcuts#ToggleHeaderHn(3)
command! MarkdownToggleHeaderH4 :call mdshortcuts#ToggleHeaderHn(4)
command! MarkdownToggleHeaderH5 :call mdshortcuts#ToggleHeaderHn(5)
command! MarkdownToggleHeaderH6 :call mdshortcuts#ToggleHeaderHn(6)

nnoremap <buffer> <Plug>(MarkdownToggleItalics) :MarkdownToggleItalics<CR>
nnoremap <buffer> <Plug>(MarkdownToggleInlineCode) :MarkdownToggleInlineCode<CR>
nnoremap <buffer> <Plug>(MarkdownToggleBold) :MarkdownToggleBold<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH1) :MarkdownToggleHeaderH1<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH2) :MarkdownToggleHeaderH2<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH3) :MarkdownToggleHeaderH3<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH4) :MarkdownToggleHeaderH4<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH5) :MarkdownToggleHeaderH5<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH6) :MarkdownToggleHeaderH6<CR>
