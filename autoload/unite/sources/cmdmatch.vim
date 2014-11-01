let s:save_cpo = &cpo
set cpo&vim

let g:unite_cmdmatch = {}
fu! g:unite_cmdmatch.set_c( base ) dict
    let self.c = a:base
endfu

fu! s:GetCommandCompletion( base )
    let i      = strridx(a:base, ' ')
    let prefix = strpart(a:base, 0, i)
    let word   = strpart(a:base, i+1)

    cno [MATCH] <c-a><c-\>eg:unite_cmdmatch.set_c(getcmdline())<cr>
    sil! exe 'norm :' . a:base . '[MATCH]'
    cu [MATCH]

    let r = g:unite_cmdmatch.c
    if r == a:base | retu '' | en
    if prefix != '' | let r = strpart(r, len(prefix)+1)| en

    retu split(r, ' ')
endf

let s:unite_source = {
      \ 'name': 'cmdmatch',
      \ 'description': 'candidates for command line completition',
      \ 'hooks': {},
      \ 'action_table': {'*': {}},
      \ 'default_action': {'*': 'continue'},
      \ 'default_kind': 'command',
      \ }

let s:unite_source.action_table['*'].continue = {
      \ 'description' : 'continue editing',
      \ 'is_quit' : 1,
      \ }

fu! s:unite_source.action_table['*'].continue.func(candidate)
    call feedkeys(':' . (s:prefix != '' ? s:prefix . ' ' : '') . a:candidate.action__command)
endf

fu! s:unite_source.gather_candidates(args, context)
    let arg = get(a:args, 0, '')

    let i = strridx(arg, ' ')
    let s:prefix = strpart(arg, 0, i)
    let sufix = strpart(arg, i+1)
    let c = strpart(sufix, 0, 1)

    let clist = s:GetCommandCompletion(c)
    retu map(clist, '{ "word": v:val,  "kind": ["common", "command"], "action__command": v:val  }')
endf

fu! unite#sources#cmdmatch#define()
  retu s:unite_source
endf

call unite#custom#profile('source/common', 'context.ignorecase', 1)
"call unite#custom#source('cmdmatch', 'filters',['matcher_fuzzy'])

