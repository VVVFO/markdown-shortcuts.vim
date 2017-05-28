" Doing a few function test

function AddSingleCharacterAround(char)
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
function RemoveSingleCharacterAroundWord()
    " viW^[ will to go the end of the word
    " xBx will remove the pair of asterisks
    " E will get to the end of the word
    normal! viWxBxE
endfunction

" If the current WORD is surronded by the argument character then remove, otherwise add
function ToggleSingleCharacterAroundWord(char)
    " first move to the end of the word
    normal! viW
    " see if the last character is *
    let end_with_char = getline(".")[col(".")-1] == a:char

    " then move to the beginning of the word
    normal! B
    let begin_with_char = getline(".")[col(".")-1] == a:char 
    
    " if begins and ends with *, then remove
    if end_with_char && begin_with_char
        call RemoveSingleCharacterAroundWord()
    " add otherwise
    else
        call AddSingleCharacterAround(a:char)
    endif

endfunction


