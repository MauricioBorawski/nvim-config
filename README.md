# Neovim config

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
