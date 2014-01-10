unite-cmdmatch
==============

This is [unite](https://github.com/Shougo/unite.vim) source that simulates command line completition. It cmaps one key, `<c-o>`, which can be used wile entering command to show completition list for the last word typed.


## Install

```vim
    NeoBundle 'majkinetor/unite-cmdmatch' , { 'depends':  'Shougo/unite.vim' }
    sil! call unite#sources#cmdmatch#define()
```

---

![screenshot](http://s30.postimg.org/tbh1oqmlt/cmd_match.gif)
