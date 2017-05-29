" create commands for toggling
command! MarkdownToggleItalics :call mdshortcuts#ToggleMultipleCharactersAroundWord(1, '*')
command! MarkdownToggleInlineCode :call mdshortcuts#ToggleMultipleCharactersAroundWord(1, '`')
command! MarkdownToggleBold :call mdshortcuts#ToggleMultipleCharactersAroundWord(2, '*')
command! MarkdownToggleHeaderH1 :call mdshortcuts#ToggleHeaderHn(1)
command! MarkdownToggleHeaderH2 :call mdshortcuts#ToggleHeaderHn(2)
command! MarkdownToggleHeaderH3 :call mdshortcuts#ToggleHeaderHn(3)
command! MarkdownToggleHeaderH4 :call mdshortcuts#ToggleHeaderHn(4)
command! MarkdownToggleHeaderH5 :call mdshortcuts#ToggleHeaderHn(5)
command! MarkdownToggleHeaderH6 :call mdshortcuts#ToggleHeaderHn(6)
command! MarkdownInsertImage :call mdshortcuts#InsertLinkOrImage('image')
command! MarkdownInsertLink :call mdshortcuts#InsertLinkOrImage('link')

" create <Plug> mappings for easy customization
nnoremap <buffer> <Plug>(MarkdownToggleItalics) :MarkdownToggleItalics<CR>
nnoremap <buffer> <Plug>(MarkdownToggleInlineCode) :MarkdownToggleInlineCode<CR>
nnoremap <buffer> <Plug>(MarkdownToggleBold) :MarkdownToggleBold<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH1) :MarkdownToggleHeaderH1<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH2) :MarkdownToggleHeaderH2<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH3) :MarkdownToggleHeaderH3<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH4) :MarkdownToggleHeaderH4<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH5) :MarkdownToggleHeaderH5<CR>
nnoremap <buffer> <Plug>(MarkdownToggleHeaderH6) :MarkdownToggleHeaderH6<CR>
nnoremap <buffer> <Plug>(MarkdownInsertImage) :MarkdownInsertImage<CR>
nnoremap <buffer> <Plug>(MarkdownInsertLink) :MarkdownInsertLink<CR>

