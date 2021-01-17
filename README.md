# Cal's .vimrc

Feel free to use this as your starting .vimrc!

## Why Though?

It's not super full like most of the .vimrcs on GitHub, and includes some of
the most important commands and keybindings to me and possibly you too.

### Leader Key

**Note:** My leader key is set to \<space>. Therefore if you change the leader
key, the bindings below will follow suit.

## KeyBindings

The following key-bindings work (case-sensitive).
|Bind|Description|
|---|---|
|;|Remaps ; to : for easier command input|
|\<space>ev|Opens .vimrc for editing in a split window|
|\<space>sv|Loads .vimrc after saving, so you don't have to close and open vim to see changes|
|H|Go to first character in a line|
|L|Go to last character in a line|
|zz|Save and quit|
|\<space>'|Surround selection with single-quotes|
|\<space>"|Surround selection with double-quotes|
|\<space>{|Surround selection with curly-braces|
|\<space>[|Surround selection with square-brackets|
|\<space><|Surround selection in HTML brackets "<>"|
|\<space>\`|Surround selection with backticks|
|Ctrl-j|Moves current line (or selection) down|
|Ctrl-k|Moves current line (or selection) up|
|Shift-j|Duplicates current line (or selection) down|
|Shift-k|Duplicates current line (or selection) up|
|\<space>n|Opens file browser (NERDTree)|
|\<space>f|Format current file (Prettier)|
|"cdi"|Becomes console.dir() in js/ts files|
