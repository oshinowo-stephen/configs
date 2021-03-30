" ALE CONFIG
let g:ale_sign_error = '🚨'
let g:ale_sign_warning = '⚠️'

let g:airline#extensions#ale#enabled = 1

" NCM2 CONFIG
let g:python3_host_prog="/usr/bin/python3"

autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
