" Last Change: 2009-11-13 17:21:06
"�ж�ϵͳ�Ƿ���С��Զ������autocmd����֧��
if has('autocmd')
"������е��Զ�����Է������
au!
"���ں�׺Ϊ��.asm�����ļ�����Ϊ����΢��� Macro Assembler ��ʽ
"�����ض��ļ����в�ȫ
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
endif
" �����ļ����Ͳ��
filetype plugin on 
" Ϊ�ض��ļ�����������������ļ�
filetype indent on 
" colorscheme railscasts
" colorscheme fruidle
"colorscheme gemcolors 
" colorscheme night
colorscheme blackboard
" colorscheme twilight
"�﷨��ʽ����
syntax on
"���������С
"set guifont=Monaco\ 10
if has("win32")
  set guifont=Monaco:h10
endif
"��ʹ����ͼ�ν��棬���һ������� LANG �в�����.������û�й涨���룩ʱ���� Vim ���ڲ�������Ϊ UTF-8
"set encoding=utf-8
"��������
set sw=2
set ts=2
set softtabstop=2
set expandtab
" history�ļ�����Ҫ��¼������
set history=100 
" �������·��ŵĵ��ʲ�Ҫ�����зָ�
set iskeyword+=_,$,@,%,#,- 
" ������ʾ��ͨtxt�ļ�����Ҫtxt.vim�ű���
au BufRead,BufNewFile *  setfiletype txt 
"����Ҫ���ֺ� vi �ǳ�����
set nocompatible
"ִ�� Vim ȱʡ�ṩ�� .vimrc �ļ���ʾ���������˴��﷨������ʾ����õĹ���
"source $VIMRUNTIME/vimrc_example.vim
" ʹbackspace��������indent, eol, start��
set backspace=indent,eol,start whichwrap+=<,>,[,]
" ����backspace�͹�����Խ�б߽�
set whichwrap+=<,>,h,l 
"����������ʱ�г�ƥ����Ŀ��Ҳ���ǽ�ͼ�ײ���Ч��
set wildmenu
"���Զ���,�̳�ǰһ�е�����ע�� ��
set autoindent
"Ĭ��������ֶ��۵�
set foldmethod=manual
"��ʾ�кţ���nonumber��
set number
"��ʾ��������
set ruler
"���Զ�����(��wrap)
set nowrap
"ȱʡ�����������ļ�
set nobackup
" ��Ҫ����swap�ļ�
set noswapfile
"set bufhidden=hide
"����������ʱ������ݵ�������֮��ƥ������Ŵ�����Ӱ������
set showmatch
" ƥ�����Ÿ�����ʱ�䣨��λ��ʮ��֮һ�룩
set matchtime=1
" ����ʱ�����ִ�Сд
 set ignorecase
" ������ʱ������Ĵʾ�����ַ�����������firefox��������
set incsearch
" ��������
set hlsearch
" ��Ҫ��˸
set novisualbell 
"��ȷ�ش��������ַ������к�ƴ��
set formatoptions+=mM
"�ļ� UTF-8 ����
set fileencodings=utf-8
"�����ļ���ʽΪunix
set fileformat=unix
"����������ʾ
set showcmd
"���ô��ڴ�С
set lines=35
set columns=120
" ������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ
set shortmess=atI 
" ���� html ����
let html_use_css = 1
let html_number_lines = 0
let use_xhtml = 1

"���صײ�������
set guioptions-=b
"�����ұ߹�����
set guioptions-=R
set guioptions-=r
"������߹�����
set guioptions-=l
set guioptions-=L
"���ز˵���
set guioptions+=m
"���ع�����
set guioptions-=T


"����F2�����˵���
function! ToggleMenuBar()
	echo "ToggleMenuBar"
	if &guioptions =~# 'm'
		set guioptions-=m
	else
		set guioptions+=m
	endif
endfunction
imap <silent> <C-F12> <C-O>:call ToggleMenuBar()<CR>
map <silent> <C-F12> :call ToggleMenuBar()<CR>

"���ù���Ŀ¼
function! CHANGE_CURR_DIR()
let _dir = expand("%:p:h")
exec "cd " . _dir
unlet _dir
endfunction
autocmd BufEnter * call CHANGE_CURR_DIR()

" NERDTree����Ŀ�ݼ�
imap <silent> <F7> <esc>:NERDTreeToggle<CR>
nmap <silent> <F7> :NERDTreeToggle<CR>
" BufExplorer ��ݼ� {{{
imap <silent> <F8> <esc>:BufExplorer<CR>
nmap <silent> <F8> :BufExplorer<CR>
" }}}

"CTRL-[ and CTRL-] indent and unindent blocks {{{
"  inoremap <C-[> <C-O><LT><LT>
" inoremap <C-]> <C-O><GT><GT>
"  nnoremap <C-[> <LT><LT>
"  nnoremap <C-]> <GT><GT>
"  vnoremap <C-[> <LT>
"  vnoremap <C-]> <GT>
"}}}

" NERD Commenter {{{
let NERDSpaceDelims = 1
map <M-/> <Plug>NERDCommenterToggle
imap <M-/> <C-O><Plug>NERDCommenterToggle
" }}}

" ���������л�,F5 �� ��������  ���л�
imap <silent> <C-left> <esc><C-W><left>
vmap <silent> <C-left> <esc><C-W><left>
nmap <silent> <C-left> <C-W><left>
imap <silent> <C-right> <esc><C-W><right>
vmap <silent> <C-right> <esc><C-W><right>
nmap <silent> <C-right> <C-W><right>
imap <silent> <C-up> <esc><C-W><up>
vmap <silent> <C-up> <esc><C-W><up>
nmap <silent> <C-up> <C-W><up>
imap <silent> <C-down> <esc><C-W><down>
vmap <silent> <C-down> <esc><C-W><down>
nmap <silent> <C-down> <C-W><down>


" Textmate alt-p & alt+l {{{
inoremap <M-p> params[:]<left>
inoremap <M-j> session[:]<left>
inoremap <M-l> <space>=><space>
inoremap <M->> <%=<space><space>%><left><left><left>
" shift+alt+l ѡ����
inoremap <M-L> <C-O><home>v<S-end>
nnoremap <M-L> <home>v<S-end>
" shift+alt+k ɾ����
inoremap <M-K> <C-O><home>v<S-end><del>
nnoremap <M-K> <home>v<s-end><del>
" ctrl + c,a,v,x,z
nnoremap <BS> d
" ctrl + a
noremap <C-A> ggVG
inoremap <C-A> <C-O>ggVG
" ctrl + s

imap <C-s> <esc>:w<CR>:echo expand("%f") . " saved."<CR>
vmap <C-s> <esc>:w<CR>:echo expand("%f") . " saved."<CR>
nmap <C-s> :w<CR>:echo expand("%f") . " saved."<CR>

" ctrl + n
imap <C-n> <esc>:enew!<CR>
nmap <C-n> :enew!<CR>
vmap <C-n> <esc>:enew!<CR>
" ctrl + c
vmap <C-c> "+y
" ctrl + x
vmap <C-x> "+x
" ctrl + z
inoremap <C-z> <C-O>u
nnoremap <C-z> u
" ctrl + y
inoremap <C-y> <C-O><C-R>
nnoremap <C-y> <C-R>
" ctrl + v
nnoremap <C-v> "+gP
inoremap <C-v> <C-O>"+gP
" ctrl + f
imap <C-f> <esc>:/
nmap <C-f> :/
" ctrl + r
imap <C-r> <esc>:%s/
vmap <C-r> <esc>:%s/
nmap <C-r> :%s/
" ctrl + o
imap <C-o> <C-O>:e
vmap <C-o> <esc>:e
nmap <C-o> :e 
"}}}

"����tag�ļ�λ��
set tags=tags;
set autochdir


" �Զ�������� ��ֹ�ڲ���ģʽ�ƶ���ʱ����� Complete ��ʾ
let g:acp_mappingDriven = 1

"jquery��ɫ֧��
au BufRead,BufNewFile *.js set syntax=jquery

"�����Զ���ȫ���ţ����ŵ�
"inoremap ( (<SPACE><SPACE>)<ESC>hha
" inoremap { <SPACE>{<ENTER><ENTER>}<ESC>ki<TAB>
" �ʺ���������ŵĲ�ȫ������CSS�����Ǻ��ʵģ����Ƕ��������ļ����;Ͳ����ˣ�����һ��
"inoremap  { <SPACE>{<SPACE><SPACE>}<ESC>hha
"inoremap [ [<SPACE><SPACE>]<ESC>hha
"inoremap " "<SPACE><SPACE>"<ESC>hha
"inoremap ' '<SPACE><SPACE>'<ESC>hha
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap " ""<left>
inoremap ' ''<left>
