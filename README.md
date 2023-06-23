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
