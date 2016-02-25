HOW TO USE
==========

Install
-------
1. Clone repo to /home/USERNAME/vim/
2. Create .vimrc in /home/USERNAME/ with content: 

set runtimepath^=~/vim 

source ~/vim/vimrc.vim

3. Run vim /home/USERNAME/.vimrc and than :PluginInstall
4. Restart vim

Colours
------
Need your some colours?
 
1.Add this line on top /home/USERNAME/.bashrc 

export TERM=xterm-256color 

2.And reload bash: 

. ~/.bashrc

