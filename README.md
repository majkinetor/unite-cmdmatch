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

## To do

- Find better way to create mapping. Currently `"` and `v` registers are overwriten by the plugin
- Find a way to hide vim's command line glitch. See [this](http://vim.wikia.com/wiki/Get_ex_command_line_completition_as_a_list) page for more info.
- Allow for completition of more then last token (i.e. `help f<c-o>` should give list of help options). That would be made easy if previous problem is solved. 
