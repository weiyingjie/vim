# Config Your Vim

## usage

#### Install

**vim**

ubuntu `sudo apt install vim`

arch `sudo pacman -S vim`

centos `yum install vim -y`

**vim-plug**
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

**plugins**

```
cd
git clone https://github.com/0Creeper0/vim.git
mv vim/{.vimrc, .ycm_*} ./
vim .vimrc

:source $MYVIMRC # reload .vimrc
:PlugInstall # install plugins
:wq
```

**Install YouCompleteMe(plugin)**

```
cd .vim/plugged/YouCompleteMe
./install.py --all
```
---

## Introduce

I've got some nice plugins in this .vimrc.

- **vim-airline** || a state bar for your vim
- **NerdTree** || give you a tree of your dir
- **YouCompleteMe** || auto complete the code
- **MarkdownPreview** || Preview your .md while you edit it

---

## Keybinding
|Key(`<C-*>`==ctrl+*)|Map(`<CR>`==Enter)|
|:-:|:-:|
|`W`|`:w<CR>`|
|`Q`|`:q<CR>`|
|`T`|`:NERDTreeToggle<CR>`|
|`<C-p>`|`:MarkdownPreview<CR>`|
|`<C-l>`|`<Right>`|
|`<C-h>`|`<Left>`|
|`<C-k>`|`<Up>`|
|`<C-j>`|`<Down>`|
|`R`|`:source $MYVIMRC<CR>`|
|`s`|`<nop>`|
|`sd`|`:set splitright<CR>:vsplit<CR>`|
|`sa`|`:set nosplitright<CR>:vsplit<CR>`|
|`sw`|`:set nosplitbelow<CR>:split<CR>`|
|`ss`|`:set splitbelow<CR>:split<CR>`|
|`<LEADER>l`|`<C-w>l`|
|`<LEADER>k`|`<C-w>k`|
|`<LEADER>h`|`<C-w>h`|
|`<LEADER>j`|`<C-w>j`|
|`<C-up>`|`:res +5<CR>`|
|`<C-down>`|`:res -5<CR>`|
|`<C-left>`|`:vertical resize-5<CR>`|
|`<C-right>`|`:vertical resize+5<CR>`|
|`sv`|`<C-w>t<C-w>H`|
|`sh`|`<C-w>t<C-w>K`|
