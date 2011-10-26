" Detect indent mode automatically (tab vs spaces)
autocmd BufReadPost * :DetectIndent

" Save on FocusLost
autocmd FocusLost * nested :silent! wall

" Ruby files
autocmd FileType ruby,rails,haml,eruby,yaml,ru,cucumber set ai sw=2 sts=2 et
if has("gui_running")
  autocmd FileType ruby,rails,haml,eruby,yaml,ru,cucumber :SyntasticEnable
endif

" Markdown files
autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown} setlocal ft=markdown wrap iskeyword+='

" Treat dasherised words as whole words in stylesheets
autocmd Filetype css,scss,sass setlocal iskeyword+=-

" Makefile
autocmd FileType make set noexpandtab

" Enable spell check by default for git commits
autocmd FileType gitcommit set spell

" use shift-return to keep focus when opening a file
" from within the quickfix list or NERDTree
autocmd FileType nerdtree,qf map <buffer> <S-CR> go

" Generate .git/tags (ctags) automatically on save
autocmd BufWritePost * call UpdateTags()
