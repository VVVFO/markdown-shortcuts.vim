if exists('g:loaded_mdshortcuts')
    finish
endif
let g:loaded_mdshortcuts = 1

function! mdshortcuts#AddSingleCharacterAround(char)
    " viW^[ will move to the end of the word
    normal! viW
    " if the last character is not already that character
    if getline(".")[col(".")-1] != a:char
        " insert a character
        execute "normal! a" . a:char . ""
    endif

    " move back to the beginning of the word
    normal! B
    " if the word does not begin with *, then add
    if getline(".")[col(".")-1] != a:char
        " insert a character and move to the end of word
        execute "normal! i" . a:char . "E"
    endif
endfunction

" Removing single character around WORD (based on whitespace not alphabetical)
" then move to the end of the WORD
function! mdshortcuts#RemoveSingleCharacterAroundWord()
    " viW^[ will to go the end of the word
    " xBx will remove the pair of asterisks
    " E will get to the end of the word
    normal! viWxBxE
endfunction

" If the current WORD is surronded by the argument character then remove, otherwise add
function! mdshortcuts#ToggleSingleCharacterAroundWord(char)
    " first move to the end of the word
    normal! viW
    " see if the last character is *
    let end_with_char = getline(".")[col(".")-1] == a:char

    " then move to the beginning of the word
    normal! B
    let begin_with_char = getline(".")[col(".")-1] == a:char 
    
    " if begins and ends with *, then remove
    if end_with_char && begin_with_char
        call mdshortcuts#RemoveSingleCharacterAroundWord()
    " add otherwise
    else
        call mdshortcuts#AddSingleCharacterAround(a:char)
    endif
endfunction

function! mdshortcuts#ToggleMultipleCharacterAroundWord(num, char)
    " turns 2, '*' to '**'
    let target_string = repeat(a:char, a:num)

    " move to the end of word
    normal! viW
    " see if it ends with the target_string
    let end_with_string = getline(".")[col(".")-a:num : col(".")-1] == target_string

    " move to the beginning of word
    normal! B
    " see if it begins with target_string
    let begin_with_string = getline(".")[col(".")-1 : col(".")+a:num-2] == target_string

    " if both begins and ends with the target_string, then remove
    if end_with_string && begin_with_string
        call mdshortcuts#RemoveMultipleCharactersAroundWord(a:num)
    " otherwise add
    else
        call mdshortcuts#AddStringAroundWord(target_string)
    endif
endfunction

function! mdshortcuts#AddStringAroundWord(string)
    " viW^[ will move to the end of the word
    normal! viW
    " append the string
    execute "normal! a" . a:string . ""

    " move back to the beginning of the word
    normal! B
    " prepend the string
    execute "normal! i" . a:string . "E"
endfunction

function! mdshortcuts#RemoveMultipleCharactersAroundWord(num)
    " viW^[l will move to the position after the end of the word
    " the repeating part is deleting a:num-1 chars back from the end
    " another x delete the current character
    " B will move the cursor back to the beginning
    " and the second repeat will remove a:num chars from the beginning
    execute 'normal! viW' . repeat('X', a:num-1) . 'xB' . repeat('x', a:num) . 'E'
endfunction
