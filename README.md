# Neovim Config

This is inspired from [ThePrimeagen](https://github.com/ThePrimeagen) guide in YouTube [here is the link](https://www.youtube.com/watch?v=w7i4amO_zaE).
This is a more simplified version but watching the video is a must to understand how everything works and how to add new plugins.

## Requirements:

- Install [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Packer 
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Setup:
1. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. Depending on your os you should clone this repo in the following directories:
### MacOs & Ubuntu
`~/.config/`

### Windows
`USER/AppData/Local/`

3. Clone the repo in the folder it should look like this: `nvim-config`

4. I recommend doing this step right now so we don't have to do it later. Run the following command in your terminal:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
5. Rename the `nvim-config` -> `nvim`
6. Use `nvim .` to open vim in the current directory and navigate to `lua/config/packer.lua`
### ---
 ### Disclaimer
 Probably here you are going to see a big error screen. Its normal nvim is looking for the plugins in the packer but since they have not been installed, its throwing that error. Press `enter` until you are able to see the vim interface.
### ---
7. Run the following commands:
`:so` and `:PackerSync`
If we skipped step `4` when trying to run `:so` vim will throw us an error, we have to close vim `:q` and run the command.
After finishing we can now try again.

And Boom you are ready to go!

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
