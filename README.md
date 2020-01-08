dotfiles
========

###dot files - linux configs

	1.	VIM configs - .vimrc and related files in .vim
	2.	shell configs - .bashrc and common /etc/bash.bashrc for all users (mostly for deb systems)
	3.	python configs - python installaion scripts with default environments

###Installation

	cd $HOME/apps
	git clone https://github.com/patelkunal/dotfiles --recursive

	vim settings
	ln -s $HOME/apps/dotfiles/vim/vimrc $HOME/.vimrc
	ln -s $HOME/apps/dotfiles/vim/vim $HOME/.vim

	bash settings
	echo ". $HOME/apps/dotfiles/bash/user.bashrc" >> $HOME/.bashrc

	git settings
	ln -sf $HOME/apps/dotfiles/git/gitconfig $HOME/.gitconfig

####Note

I am using Non-ASCII characters in bash-prompt.sh.
In debian, please enable locale with UTF-8. 
```
dpkg -l locales
/usr/sbin/dpkg-reconfigure locales # and select en_US with UTF-8
````

### Windows settings - 

mklink /H .gitconfig %USERPROFILE%\dotfiles\git\gitconfig

##### add following line in %USERPROFILE%\_vimrc
source $HOME/dotfiles/vim/vimrc                                                                                                         source $VIMRUNTIME/vimrc_example.vim

note: when installing vim, make sure to select default settings.
