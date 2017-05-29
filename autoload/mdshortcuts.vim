" calling with (3, '*') will be toggling the string '***' around the current word
" if the produced string (e.g. '***') does not exist at BOTH sides yet, then
" add it
" otherwise add it to the side(s) where there is still no this string yet
function! mdshortcuts#ToggleMultipleCharactersAroundWord(num, char)
    " turns 2, '*' to '**'
    let target_string = repeat(a:char, a:num)

    " get current word
    let current_word = expand('<cWORD>')

    " see if it ends with the target_string
    let end_with_string = (current_word[-a:num : -1] == target_string)

    " see if it begins with target_string
    let begin_with_string = (current_word[0 : a:num - 1] == target_string)

    " if both begins and ends with the target_string, then remove
    if end_with_string && begin_with_string
        call mdshortcuts#RemoveMultipleCharactersAroundWord(a:num)
    " otherwise add
    else
        call mdshortcuts#AddStringAroundWord(target_string)
    endif
endfunction

" do both prepending and appending the argument string to the current word
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

" removing multiple characters around both sides of a word
" num > 0
function! mdshortcuts#RemoveMultipleCharactersAroundWord(num)
    " viW^[l will move to the position after the end of the word
    " the repeating part is deleting a:num-1 chars back from the end
    " another x delete the current character
    " B will move the cursor back to the beginning
    " and the second repeat will remove a:num chars from the beginning
    execute 'normal! viW' . repeat('X', a:num-1) . 'xB' . repeat('x', a:num)
endfunction

" n denotes the level of header (H1 - H6)
" n should be a value between 1 and 6 (inclusive)
function! mdshortcuts#ToggleHeaderHn(n)
    " getting the first line
    let current_line = getline(".")

    " if the current line is empty then add the header and stop
    if strlen(current_line) == 0
        execute 'normal! i' . repeat('#', a:n) . ' ' 
        return
    endif
        
    " otherwise there must be something to split and we can
    " getting the part of the current line until the first whitespace
    let first_split = split(current_line)[0]
    
    " determining current header level: 1-6 indicates having a header, 0
    " indicates not
    if first_split == repeat('#', strlen(first_split))
        let current_header_level = strlen(first_split)
    else
        let current_header_level = 0
    endif

    " if the current level matches the argument level, then remove the header
    " if they differs but the current level is non-zero, then change it to
    " argument level
    " otherwise (current level = 0) then add the argument level header
    if current_header_level == a:n
        normal! ^dW$
    elseif current_header_level != a:n && current_header_level != 0
        execute 'normal! ^cW' . repeat('#', a:n) . '$' 
    else
        execute 'normal! ^i' . repeat('#', a:n) . ' $' 
    endif
endfunction

" insert the markdown link template []() or image template ![]()
" argument should be either 'image' or 'link'
" check whether the current system clipboard regsiter contains a link
" if so insert that link into the URL field of the string inserted
function! mdshortcuts#InsertLinkOrImage(type)
    " take the content out of the clipboard register
    let clipboard_content = @+
    " loosely matches out the part that looks like an URL
    let url = matchstr(clipboard_content, '[^ ]*\.[^ ]*')

    " deciding which template to use
    if a:type == 'image'
        let template = '![]('
    elseif a:type == 'link'
        let template = '[]('
    else
        echoerr 'Invalid argument for mdshortcuts#InsertLinkOrImage'
    endif
    
    " if the clipboard content is a URL, then insert this with URL
    if clipboard_content == url
        " insert the format with URL and jump to the square brackets field
        execute 'normal! i' . template . clipboard_content . ')%h'
    else
        " otherwise just insert the template there
        execute 'normal! i' . template ')hh'
    endif
endfunction


