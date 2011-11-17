" PEP8
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Pylint magic
set makeprg=pylint\ --rcfile=~/.pylintrc\ --reports=n\ --output-format=parseable\ %:p
set errorformat=%f:%l:\ %m
"autocmd BufWritePost *.py make
map <leader>wf :make<CR> :cw<CR>

