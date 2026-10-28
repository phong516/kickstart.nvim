# Neovim Shortcuts

`<Space>` is the leader key. For combinations, press the keys in order.

## Files and Tabs

| Shortcut | Action |
| --- | --- |
| `<Space>e` | Toggle the filesystem explorer |
| `<Space>bt` | Focus the open-files list in the left sidebar |
| `<Space><Space>` | Pick an already-open file buffer |
| `<Space>bn` / `<Space>bp` | Switch to the next / previous file tab |
| `<Space>bd` | Close the current file tab; save it first if modified |
| `<Ctrl-h>` / `<Ctrl-l>` | Move between the left explorer and editor panes |

Click a filename in the top tab bar to switch to it.

## Code Navigation

| Shortcut | Action |
| --- | --- |
| `grd` | Go to definition |
| `grD` | Go to declaration |
| `gra` or `<Ctrl-.>` | Open code actions / quick fixes |
| `<Ctrl-t>` | Jump back after navigation |

A "create declaration from definition" action appears only if the attached language server offers it.

## Search and Replace

| Shortcut | Action |
| --- | --- |
| `<Space>sg` | Search file contents across the project with Telescope |
| `<Space>sR` | Open project-wide search and replace |
| Visual selection, then `<Space>sR` | Search and replace starting from selected text |
| In the replace buffer, `<Space>r` | Apply the reviewed replacement |

## Terminal and Git

| Shortcut | Action |
| --- | --- |
| `<Space>tt` or `<Ctrl-\>` | Toggle the floating terminal |
| `<Esc><Esc>` | Leave terminal input mode |
| `<Space>gg` | Open LazyGit in the current Git repository |

## Debugging C and C++

| Shortcut | Action |
| --- | --- |
| `<Space>b` | Toggle a breakpoint on the current line |
| `<F5>` | Start or continue debugging |
| `<Shift-F5>` | Stop debugging |
| `<Ctrl-Shift-F5>` | Restart debugging |
| `<F1>` / `<F2>` / `<F3>` | Step into / over / out |
| `<F7>` | Toggle the debugger UI |

C/C++ debugging uses codelldb. QML runtime debugging is not configured in Neovim; use Qt Creator's QML debugger for QML-specific inspection and breakpoints.
