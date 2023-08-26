# Install Astrovim and user config
- Install Astrovim
```bash
git clone --depth 1 https://github.com/AstroNvim/AstroNvim.git ~/.config/nvim
```
- Install user settings
```bash
git clone git@github.com:HuntFeng/astrovim-user-config.git ~/.config/nvim/lua/user  
```

# Install Parsers and LSP for languages
```
:TSInstall python
:TSInstall latex
:TSInstall bibtex
:TSInstall vue
:TSInstall javascript
:TSInstall typescript
:TSInstall html
:TSInstall json
:TSInstall yaml
:TSInstall css
:TSInstall scss
:TSInstall markdown

:LspInstall pyright
:LspInstall texlab
:LspInstall volar
:LspInstall vimls
:LspInstall lua_ls
```
## Trouble shooting
- If `markdown-preview` is not working and error prompt shows `MODULE_NOT_FOUND`, do the folloing: 
```bash
cd ~/.local/share/nvim/lazy/markdown-preview.nvim/app
yarn install
# or 
npm install
```
## Enable global clipboard
Neovim can share clipboard using `xclip`,
```bash
sudo apt-get install xclip
```
