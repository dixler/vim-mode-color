"color change on mode
if exists("g:mode_color")
   au InsertEnter * call InsertStatuslineColor(v:insertmode)
   au InsertChange * call InsertStatuslineColor(v:insertmode)
   au InsertLeave * hi Normal ctermbg=232 guibg=#000000
endif

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi Normal ctermbg=236 guibg=#000000
  elseif a:mode == 'r'
    hi Normal ctermbg=52 guibg=#000000
  else
    hi Normal ctermbg=3 guibg=#000000
  endif
  hi Cursor       cterm=NONE     ctermbg=NONE    guibg=NONE     guifg=NONE
endfunction
