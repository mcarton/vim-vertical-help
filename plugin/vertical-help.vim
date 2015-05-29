if exists('g:loaded_vertical_help')
  finish
else
  let g:loaded_vertical_help = 1
endif

function! VerticalHelp()
    if !exists('w:help_is_moved') && &columns > 160
        wincmd L
        let w:help_is_moved = 1
    endif
endfunction

autocmd FileType help nested call VerticalHelp()
