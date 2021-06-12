
inoremap jk <esc>


syntax on
set encoding=utf8
" The next three are for the fuzzy search:
set path+=** " search all subdirectories and recursively
set wildmenu " shows mutiple matches on one line
set nocompatible " limit search to your project

set relativenumber

set spelllang=en_us,cjk
"hi Comment ctermfg =blue

inoremap <c-u> <esc>viwUa

let mapleader = ","
let maplocalleader = "\\"

filetype indent on
filetype plugin on

" highlight all matches in a file
" highlight the naxt match while you're still typing out your search pattern
set hlsearch incsearch

" let g:embark_terminal_italics = 1
" let g:airline_cheme = 'embark'
" packadd! embark
" colorscheme embark

" nnoremap <leader>g :silent execute "grep! -R " .shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>


" set statusline=%.20F
" set statusline+=\ -
" set statusline+=\ FileType:\ %y
" set statusline+=%=
" set statusline+=Current:\ %-4l
" set statusline+=Total:\ %-4L

" indentline color
let g:indentLine_color_term = 239 
"let g:indentLine_char = '|'

" youcomleteme
" meaning complete 语义补全
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_key_invoke_completion = '<c-z>'
" 关闭函数预览窗口
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
" 自动语义补全
let g:ycm_semantic_triggers = {
			\ 'c,cpp,python,java,go,erlang,perl,html': ['re!\w{2}'],
			\ 'cs,lua,javascript,sql,awk': ['re!]w{2}'],
			\}
" 白名单
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "python":1,
			\ "sh":1,
			\ "vim":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ "r":1,
			\ "yaml":1,
			\ "css":1,
			\ "tex":1,
			\ "json":1,
			\ "bib":1,
			\ "html":1,
			\ "sql":1,
			\ "awk":1,
			\}

"highlight PMenu ctermfg=0 ctermbg=101 guifg=black guibg=darkgrey
"highlight PMenuSel ctermfg=23 ctermbg=8 guifg=darkgrey guibg=black

" netrw setting
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" let g:netrw_browse_split = 4

" augroup PorjectDrawer
   " autocmd VimEnter * :Vexplore
" augroup End


" Powerline file settings -----------------------{{{

set rtp+=/usr/share/powerline/bindings/vim/
set laststatus=2
set t_Co=256
"}}}

" Nnoremap file settings -----------------------{{{

nnoremap <c-u> viwUe
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>ww
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>ww
nnoremap <leader>; mqA;<esc>`q
nnoremap H ^
nnoremap L $
"}}}


" inoremap <leader>q ""<esc>:let leavechar='"'<cr>i

" Inoremap file settings -----------------------{{{

inoremap <c-u> <esc>viwUA
inoremap <esc> <nop>
inoremap <c-d> <esc>ddo
inoremap <leader>jt <esc>2la
inoremap <buffer> ;p ()<esc>i
inoremap <buffer> ;q ""<esc>i
inoremap <buffer> ;y ''<esc>i
inoremap <buffer> ;s []<esc>i
inoremap <buffer> ;c {}<esc>i
inoremap <buffer> ;j <esc>wa,<space>

"}}}

" Vnoremap file settings -----------------------{{{

vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>

"}}}
" Onoremap file settings -----------------------{{{
" onoremap iq i"
" onoremap iy i'
" onoremap ip i(
" onoremap is i[
" onoremap ic i{

onoremap iq :<c-u>normal! f"vi"<cr>
onoremap iy :<c-u>normal! f'vi'<cr>
onoremap ip :<c-u>normal! f)vi(<cr>
onoremap is :<c-u>normal! f]vi[<cr>
onoremap ic :<c-u>normal! f}vi{<cr>

onoremap Iq :<c-u>normal! F"vi"<cr>
onoremap Iy :<c-u>normal! F'vi'<cr>
onoremap Ip :<c-u>normal! F)vi(<cr>
onoremap Is :<c-u>normal! F]vi]<cr>
onoremap Ic :<c-u>normal! F}vi}<cr>
"}}}


" Iabbrev file settings -----------------------{{{

iabbrev adn and
iabbrev pirnt print
iabbrev <leader>@@ shlzxcmath@outlook.com
iabbrev ssig --<cr>Zhang Weibing<cr>shlzxcmath@outlook.com
" disable use original words which is mapped

"}}}



" Vimscript file settings -----------------------{{{

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
	autocmd FileType vim set shiftwidth=4
	autocmd FileType vim nnoremap <buffer> <localleader>c I"<space><esc>
	autocmd FileType vim nnoremap <buffer> <localleader>s :source %<cr>
augroup END

"}}}



" Bash file settings -----------------------{{{

augroup filetype_bash
	autocmd!
	autocmd BufWritePre bash :normal gg=G
	autocmd FileType sh nnoremap <buffer> <localleader>c I#<esc>
	autocmd FileType sh set shiftwidth=4
augroup END
"}}}


" Python file settings -----------------------{{{

augroup fileytype_python
	autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>c I#<space><esc>
	"autocmd FileType python nnoremap <buffer> <localleader>r :call TermDebugSendCommand('run')<CR> 
	"autocmd FileType python nnoremap <buffer> <localleader>q :call TermDebugSendCommand('q')<CR> 
	autocmd FileType python nnoremap <buffer> <localleader>r :call PythonCompileAndRunFile()<CR> 
	autocmd FileType python nnoremap <buffer> <localleader>q :call PythonCompileAndRunFile()<CR> 
	autocmd FileType python nnoremap <buffer> <localleader>ad :packadd termdebug<cr>:Termdebug python<cr>  
	autocmd FileType python iabbrev <buffer> iff if:<left>
	autocmd FileType python iabbrev <buffer> eli elif:<left>
	autocmd FileType python iabbrev <buffer> def def:<left>
	autocmd FileType python iabbrev <buffer> cla class:<left>
	autocmd FileType python iabbrev <buffer> ;r  return
	autocmd FileType python	iabbrev <buffer> return NOPENOPENOPE
        autocmd FileType python setlocal expandtab autoindent sw=4 ts=4 sts=4
        autocmd FileType python inoremap <buffer> <leader>pf print(f'')<esc>hi
        autocmd FileType python setlocal splitright


augroup END


if !exists ("g:python_command")
	let python_command = "python"
endif

function! PythonCompileAndRunFile()
	let pythonresult = system(g:python_command . ' ' . bufname('%') . ' ' . "2>&1")
	if bufwinnr(2) ==# 2
		execute 2 . " wincmd w"
	else
		vsplit __pythonresult__
	endif

	normal! ggdG
	setlocal filetype=pyresult
	setlocal buftype=nofile 
	call append(0, split(pythonresult, '\v\n'))
	execute "normal! :wincmd w\r"
endfunction

"}}}




" Rmarkdown file settings -----------------------{{{

augroup filetype_rmarkdown

        autocmd!
        autocmd FileType rmarkdown nnoremap <buffer> <localleader>c I#<esc>
        autocmd FileType rmarkdown iabbrev <buffer> iff if:<left>
        autocmd FileType rmarkdown iabbrev <buffer> eli elif:<left>
        autocmd FileType rmarkdown iabbrev <buffer> def def:<left>
        autocmd FileType rmarkdown iabbrev <buffer> cla class:<left>
        autocmd FileType rmarkdown setlocal expandtab autoindent sw=4 ts=4 sts=4
        autocmd FileType rmarkdown inoremap <buffer> ,r ```{r}<esc>o```<esc>klla,<space>
        autocmd FileType rmarkdown inoremap <buffer> ,p ```{python}<esc>o```<esc>klea,<space>
        autocmd FileType rmarkdown inoremap <buffer> ,v ```{vim}<esc>o```<esc>klea,<space>
        autocmd FileType rmarkdown inoremap <buffer> ,b ```{bash}<esc>o```<esc>klea,<space>
	autocmd FileType rmarkdown nnoremap <leader>bd :!Build.sh %:t<cr><cr>
	autocmd FileType rmarkdown nnoremap <leader>pd :!start_zathura.sh  %:t<cr><cr>
	autocmd FileType rmarkdown onoremap <buffer> ik :<c-u>execute "normal! ?^```{\r:nohlsearch\rvg_/``\\+$\r$"<cr>
	


augroup END

let g:pandoc#modules#disable = ["spell"]
"let g:pandoc#syntax#conceal#use = 0

"}}}


" Html file settings -----------------------{{{

augroup filetype_html

        autocmd!
	"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
	"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
        autocmd FileType html nnoremap <buffer> <localleader>c I#<esc>
        autocmd FileType html nnoremap <buffer> <localleader>r :call TermDebugSendCommand('run')<CR> 
        autocmd FileType html nnoremap <buffer> <localleader>q :call TermDebugSendCommand('q')<CR> 
        autocmd FileType html setlocal expandtab autoindent sw=4 ts=4 sts=4

augroup END

"}}}


" SQL file settings -----------------------{{{

augroup filetype_sql

        autocmd!
        autocmd FileType sql,pgsql nnoremap <buffer> <localleader>c I--<space><esc>
        autocmd FileType sql,pgsql setlocal expandtab autoindent sw=4 ts=4 sts=4
        autocmd FileType sql,pgsql setlocal splitright
        autocmd FileType sql,pgsql nnoremap <buffer> <localleader>r :call SqlComplieAndRunFile()<cr>
augroup END

if !exists("g:postsql_command")
    let postsql_command = "psql"
endif
function! SqlComplieAndRunFile()
    let sqlresult = system(g:postsql_command . " test" . " -f " . bufname("%") . " 2>&1")

    if bufwinnr(2) ==# 2
	execute 2 . " wincmd w"
    else
        vsplit __sqlresult__
    endif

    normal! ggdG
    setlocal filetype=postsql
    setlocal buftype=nofile
    call append(0, split(sqlresult, '\v\n'))
    execute "normal! :wincmd w\r"
endfunction

"}}}


" NOTES file settings -----------------------{{{

augroup filetype_rmd

    	nnoremap <leader>nw :e $NOTES_DIR/index.Rmd<cr>:cd $NOTES_DIR<CR>
        autocmd!
	command! -nargs=1 Ngrep vimgrep "<args>" $NOTES_DIR/**/*.Rmd
	

	command! -nargs=1 Vgrep vimgrep "<args>" $NOTES_DIR/**/*.vmp


	nnoremap <leader>nr :Ngrep
	nnoremap <leader>nv :Vgrep
	command! Vlist botright vertical copen | vertical resize 50
	nnoremap <leader>v :Vlist<cr>
	nnoremap <leader>bd :!Build.sh %:t<cr><cr>
	nnoremap <leader>pd :!start_zathura.sh  %:t<cr><cr>

augroup END

"}}}


nnoremap <leader>F :.!toilet -w 200 -f future<CR>
nnoremap <leader>f :.!toilet --irc<CR>
nnoremap <leader>cn :.!toilet -w 200 -f term -F border<CR>
nnoremap <leader>tn :.!toilet -w 200 -f wideterm -F border<CR>






" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger=";a"
"let g:UltiSnipsExpandTrigger=";"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"






" Make calcurse notes markdown compatible:

autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=rmarkdown
autocmd BufRead,BufNewFile ~/.local/share/calcurse/notes/*  set filetype=rmarkdown


" open url

function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    silent exec "!xdg-open '".s:uri."'"
  else
    echo "No URI found in line."
  endif
endfunction
map <leader>u :call HandleURL()<cr>






packadd! dracula
colorscheme dracula


packadd! potion
"packadd! vimpresentation

