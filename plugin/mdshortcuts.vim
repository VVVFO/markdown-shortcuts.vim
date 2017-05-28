command! ToggleItalics :call mdshortcuts#ToggleSingleCharacterAroundWord('*')

nnoremap <buffer> <Plug>(ToggleItalics) :ToggleItalics<CR>

