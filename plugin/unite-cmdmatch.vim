call unite#sources#cmdmatch#define()

if !hasmapto('<Plug>(unite_cmdmatch_complete)')
    cm <c-o> <Plug>(unite_cmdmatch_complete)
en
cno <Plug>(unite_cmdmatch_complete) <c-f>^"vyg_ddo<cr>:Unite -buffer-name=cmdmatch -direction=botr -start-insert -input=<c-r>=strpart(@v, strridx(@v, ' ')+1)<cr> cmdmatch:<c-r>=escape(@v,' ')<cr><cr>
