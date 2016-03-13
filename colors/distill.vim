" Distill colorscheme for Neovim/gVim
" Copyright © 2016 Zandr Martin
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the "Software"),
" to deal in the Software without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distribute, sublicense,
" and/or sell copies of the Software, and to permit persons to whom the
" Software is furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included
" in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
" OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
" IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
" TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
" OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

" initialization {{{
let g:colors_name = 'distill'

if !has('gui_running') && !(has('nvim') && $NVIM_TUI_ENABLE_TRUE_COLOR)
    echoe 'The ' . g:colors_name . ' colorscheme requires a 24-bit color Vim (gVim or Neovim).'
    finish
endif

set background=dark

hi clear
if exists('syntax_on')
    syntax reset
endif
" }}}

" colors {{{
highlight Normal                guifg=#ffffff guibg=#000000 gui=NONE
highlight Visual                guifg=#ffffff guibg=#005faf gui=NONE

highlight CursorLine                          guibg=#303030 gui=NONE
highlight CursorLineNr          guifg=#ffffff guibg=#585858 gui=NONE
highlight CursorColumn          guifg=#ffffff guibg=#3a3a3a gui=NONE

highlight Folded                guifg=#b2b2b2 guibg=#1c1c1c gui=NONE
highlight FoldColumn            guifg=#767676 guibg=#1c1c1c gui=NONE
highlight SignColumn            guifg=#ffffff guibg=#121212 gui=bold
highlight ColorColumn                         guibg=#121212 gui=NONE

highlight StatusLineNC          guifg=#808080 guibg=#080808 gui=NONE

highlight LineNr                guifg=#767676 guibg=#262626 gui=NONE
highlight VertSplit             guifg=#585858               gui=NONE

highlight Directory             guifg=#afaf5f               gui=bold
highlight Underlined            guifg=#af5f00               gui=NONE

highlight Question              guifg=#5fafd7               gui=bold
highlight MoreMsg               guifg=#ffaf00               gui=bold
highlight WarningMsg            guifg=#ff5f00               gui=bold
highlight ErrorMsg              guifg=#ff0000 guibg=NONE    gui=bold

highlight Comment               guifg=#767676               gui=italic
highlight vimCommentTitleLeader guifg=#bcbcbc               gui=italic
highlight vimCommentTitle       guifg=#bcbcbc               gui=italic
highlight vimCommentString      guifg=#8a8a8a               gui=italic

highlight TabLine               guifg=#ffffff guibg=#444444 gui=NONE
highlight TabLineFill           guifg=#585858 guibg=#444444 gui=NONE
highlight TabLineNumber         guifg=#d70000 guibg=#444444 gui=bold
highlight TabLineClose          guifg=#8a8a8a guibg=#444444 gui=bold

highlight SpellCap              guifg=#ffffff guibg=#0087af gui=bold

highlight SpecialKey            guifg=#4e4e4e               gui=NONE
highlight NonText               guifg=#870000 guibg=#000000 gui=NONE
highlight MatchParen            guifg=#ffffff guibg=#005faf gui=bold

highlight Constant              guifg=#af875f               gui=bold
highlight Special               guifg=#afd787               gui=NONE
highlight Identifier            guifg=#5f8787               gui=bold
highlight Statement             guifg=#d7d787               gui=bold
highlight PreProc               guifg=#9e9e9e               gui=NONE
highlight Type                  guifg=#5f87af               gui=bold
highlight String                guifg=#afaf5f               gui=NONE
highlight Number                guifg=#d7875f               gui=NONE
highlight Define                guifg=#d7875f               gui=NONE
highlight Error                 guifg=#ff8700 guibg=#af0000 gui=NONE
highlight Function              guifg=#d7af5f               gui=NONE
highlight Include               guifg=#d7875f               gui=NONE
highlight PreCondit             guifg=#d7875f               gui=NONE
highlight Keyword               guifg=#d7875f               gui=NONE
highlight Search                guifg=#ffffff guibg=#af5f5f gui=NONE
highlight Title                 guifg=#ffffff               gui=NONE
highlight Delimiter             guifg=#949494               gui=NONE
highlight StorageClass          guifg=#d7d7af               gui=NONE
highlight Operator              guifg=#d7af87               gui=NONE

highlight TODO                  guifg=#ffff87 guibg=NONE    gui=bold,underline

highlight SyntasticWarning      guifg=#ffd700 guibg=#875f00 gui=bold
highlight SyntasticError        guifg=#ff5f00 guibg=#5f0000 gui=bold

highlight PmenuSbar             guifg=#767676 guibg=#585858 gui=bold
highlight PmenuThumb                          guibg=#8a8a8a gui=bold

highlight phpEOL                guifg=#8a8a8a               gui=NONE
highlight phpStringDelim        guifg=#875f00               gui=NONE
highlight phpDelimiter          guifg=#d70000               gui=NONE
highlight phpFunctions          guifg=#ffd75f               gui=bold
highlight phpBoolean            guifg=#d78700               gui=bold
highlight phpOperator           guifg=#ffaf5f               gui=NONE
highlight phpMemberSelector     guifg=#af8787               gui=bold
highlight phpParent             guifg=#ffff5f               gui=NONE

highlight PHPClassTag           guifg=#dadada               gui=NONE
highlight PHPInterfaceTag       guifg=#dadada               gui=NONE
highlight PHPFunctionTag        guifg=#ffd787               gui=bold

highlight pythonDocString       guifg=#585858               gui=NONE
highlight pythonDocStringTitle  guifg=#8a8a8a               gui=NONE
highlight pythonDot             guifg=#af8787               gui=bold
highlight pythonRun             guifg=#5f875f               gui=NONE
highlight pythonBuiltinObj      guifg=#5f87af               gui=bold
highlight pythonSelf            guifg=#bcbcbc               gui=bold
highlight pythonFunction        guifg=#d7af5f               gui=bold
highlight pythonClass           guifg=#ffd75f               gui=bold
highlight pythonExClass         guifg=#af5f00               gui=NONE
highlight pythonException       guifg=#af5f00               gui=bold
highlight pythonOperator        guifg=#d7d787               gui=NONE
highlight pythonPreCondit       guifg=#afd7d7               gui=bold
highlight pythonDottedName      guifg=#d75f00               gui=NONE
highlight pythonDecorator       guifg=#af0000               gui=bold

highlight PythonInterfaceTag    guifg=#87afaf               gui=NONE
highlight PythonClassTag        guifg=#ffd75f               gui=NONE
highlight PythonFunctionTag     guifg=#87afaf               gui=NONE
highlight PythonVariableTag     guifg=#dadada               gui=NONE
highlight PythonMemberTag       guifg=#afafaf               gui=NONE

highlight CTagsImport           guifg=#87afaf               gui=NONE
highlight CTagsClass            guifg=#ffd75f               gui=NONE
highlight CTagsFunction         guifg=#87afaf               gui=NONE
highlight CTagsGlobalVariable   guifg=#dadada               gui=NONE
highlight CTagsMember           guifg=#afafaf               gui=NONE

highlight xmlTag                guifg=#afd75f               gui=bold
highlight xmlTagName            guifg=#bcbcbc               gui=NONE
highlight xmlEndTag             guifg=#ff875f               gui=bold

highlight cssImportant          guifg=#d75f00               gui=bold

highlight DiffAdd               guifg=#87d700 guibg=#005f00 gui=bold
highlight DiffChange            guifg=#ffd700 guibg=#875f00 gui=bold
highlight DiffDelete            guifg=#d70000               gui=NONE
highlight DiffText              guifg=#ffd700 guibg=#875f00 gui=reverse

highlight diffLine              guifg=#5f87d7               gui=bold
highlight diffFile              guifg=#666666               gui=NONE
highlight diffNewFile           guifg=#666666               gui=NONE

highlight StatusInsert          guifg=#000000 guibg=#afaf5f gui=NONE
highlight StatusReplace         guifg=#000000 guibg=#5f87af gui=NONE
highlight StatusVisual          guifg=#000000 guibg=#af5f5f gui=NONE
highlight StatusTerm            guifg=#ffffff guibg=#005f00 gui=NONE
highlight StatusRO              guifg=#d70000 guibg=#262626 gui=NONE

highlight! link TabLineSel      CursorLineNr
highlight! link TabLine         LineNr
highlight! link TabLineFill     LineNr
highlight! link Pmenu           LineNr
highlight! link PmenuSel        CursorLineNr
highlight! link StatusLine      LineNr
highlight! link WildMenu        CursorLineNr

highlight! link htmlTag         xmlTag
highlight! link htmlTagName     xmlTagName
highlight! link htmlEndTag      xmlEndTag

highlight! link phpCommentTitle vimCommentTitle
highlight! link phpDocTags      vimCommentString
highlight! link phpDocParam     vimCommentTitle

highlight! link diffAdded       DiffAdd
highlight! link diffChanged     DiffChange
highlight! link diffRemoved     DiffDelete

highlight! link CtrlPMode1      LineNr
highlight! link CtrlPMode2      LineNr
" }}}

let g:indentLine_color_gui = '#444444'
" vim: foldmethod=marker
