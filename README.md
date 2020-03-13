Some files and scripts to share between the different linux environments.

### Environment
    ln -s ~/projects/std/linux-setup/.profile ~/.profile
    ln -s ~/projects/std/linux-setup/.psqlrc ~/.psqlrc

### Vim
install `https://github.com/stedi67/vim-config`

### tmux
    ln -s ~/projects/std/linux-setup/.tmux.conf ~/.tmux.conf

### pip
    mkdir .config/pip
    ln -s ~/projects/std/linux-setup/.config/pip/pip.conf ~/config/pip/

### other
    sudo apt install exuberant-ctags cscope

### pycscope
pycscope does not work correctly with python3.
Do the following:
- get the pycscope sources (github)
- open pycscope/__init__.py with your preferred browser
- replace `index_len = len(index)` with `index_len = len(index.encode('utf-8'))`
- install it via `pip3 install .`
- we now have a `pycscope` binary in our PATH
