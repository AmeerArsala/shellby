# shellby

Organize your shells across OS's. Written in Rust btw

## The Plan

1.) Based on $SHELL, $HOST (aka OS), and file type (shellrc, login, logout, profile, etc.), choose a precompiled script to source from the cache. The location of this cache will differ based on the $HOME (due to the $USER being different).

2.) This cached file will have been precompiled where the system-wide defaults are first taken into account (from `/etc/shellby`) and then the user's customizations (from `$HOME/.shell`), taking care to override any of the conflicts with their latest versions and out comes the final script

3.) From both perspectives (system-wide and via user), a config file defines the behavior in which the compilation will occur

## Development

Must have [pipelight](https://pipelight.dev) installed.

```fish
pipelight enable git-hooks
```
