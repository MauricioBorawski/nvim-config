# Neovim Config

This is inspired from [ThePrimeagen](https://github.com/ThePrimeagen) guide in YouTube [link](https://www.youtube.com/watch?v=w7i4amO_zaE).

## Requirements:

- Installed [ripgrep](https://github.com/BurntSushi/ripgrep#installation)

## Troubleshooting:
- Problems with [Mason](https://github.com/williamboman/mason.nvim) and `lua-language-server`

```
scoop install lua-language-server
```
For other Os check [here](https://github.com/LuaLS/lua-language-server/wiki/Getting-Started#install-1).

- Problems with treesitter.
- Problems with `uv_dlopen`.
- Problems with `*.so`.

Install LLVM via [chocolatey](https://community.chocolatey.org/packages/llvm)

And run in the terminal before lunching nvim.
```
set CC = clang
```
## Environment:

- Nvim version: v0.9.1
- Os: Windows 11 Pro (x86)
- Run on [Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701)

## Usefull commands:

- `:TSInstall server` for updating packages. Ex: `:TSInstall lua`.
- `:Mason` for installing and checking LSP servers.
- `:checkhealth` if you have any problem this will help you to find the problem. You can also run with a Plugin like this: `:checkhealth treesitter`
