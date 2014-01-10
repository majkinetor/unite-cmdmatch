unite-cmdmatch
==============

This is [unite](https://github.com/Shougo/unite.vim) source that simulates command line completition. It cmaps one key, `<c-o>`, which can be used wile entering command to show completition list for the last word typed.

See the [screenshot](http://imagebin.org/index.php?mode=image&id=285956).

## Install

```vim
    NeoBundle 'majkinetor/unite-cmdmatch' , { 'depends':  'Shougo/unite.vim' }
    if exists("*unite#sources#cmdmatch#define") | call unite#sources#cmdmatch#define() | en
```
