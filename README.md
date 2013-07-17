# Vim files

Install

```
cd ~
git clone https://github.com/deiv/vimfiles.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule init
git submodule update
```

Update all submodules

```
git submodule foreach git pull origin master
```
