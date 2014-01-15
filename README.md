unite-cmdmatch
==============

This is [unite](https://github.com/Shougo/unite.vim) source that simulates command line completion. It cmaps one key, `<c-o>`, which can be used while entering command to show completion list for the last word typed.

NOTE: This is a work in progress.

## Installation

```vim
    "Easiest way
    NeoBundle 'majkinetor/unite-cmdmatch'

    " With dependency
    NeoBundle 'majkinetor/unite-cmdmatch', { 'depends': 'Shougo/unite.vim' }

    " With lazy loading and custom map
    NeoBundleLazy 'majkinetor/unite-cmdmatch', { 'depends': 'Shougo/unite.vim', 'mappings' : [['c', '<Plug>(unite_cmdmatch_complete)']] }
    cm <c-o> <Plug>(unite_cmdmatch_complete)
```

---

![screenshot](http://s30.postimg.org/tbh1oqmlt/cmd_match.gif)
