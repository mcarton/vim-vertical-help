function! VerticalHelp()
    if !exists('w:help_is_moved') && &columns > 160
        wincmd L
        let w:help_is_moved = 1
    endif
endfunction

autocmd FileType help nested call VerticalHelp()
