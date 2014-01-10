unite-cmdmatch
==============

This is [unite](https://github.com/Shougo/unite.vim) source that simulates command line completion. It cmaps one key, `<c-o>`, which can be used while entering command to show completion list for the last word typed.


## Install

```vim
    NeoBundle 'majkinetor/unite-cmdmatch' , { 'depends':  'Shougo/unite.vim' }
```

or using any plugin manager...
---


![screenshot](http://s30.postimg.org/tbh1oqmlt/cmd_match.gif)

## To do

- Find a better way to create mapping. Currently `"` and `v` registers are overwritten by the plugin.
- Find a way to hide Vim's command line glitch. See [this](http://vim.wikia.com/wiki/Get_ex_command_line_completion_as_a_list) page for more info.
- Allow for completion of more then last token (i.e. `help f<c-o>` should give list of help options). That would be made easy if previous problem is solved.
