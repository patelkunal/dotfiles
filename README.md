dotfiles
========

dot files - linux configs

	1.	VIM configs - .vimrc and related files in .vim
	2.	shell configs - .bashrc and common /etc/bash.bashrc for all users (mostly for deb systems)
	3.	python configs - python installaion scripts with default environments

Installation

	cd apps
	git clone https://github.com/patelkunal/dotfiles --recursive

	vim settings
	cd ~
	ln -s apps/dotfiles/vim/.vimrc .vimrc
	ln -s apps/dotfiles/vim/.vim .vim

	bash settings
	echo ". $HOME/apps/dotfiles/bash/user.bashrc" >> $HOME/.bashrc
	sudo echo ". $HOME/apps/dotfiles/bash/root.bashrc" >> /etc/bash.bashrc 
