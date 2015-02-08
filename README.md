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
	echo ". $HOME/apps/dotfiles/bash/root.bashrc" | sudo tee -a /etc/bash.bashrc 

	git settings
	ln -sf $HOME/apps/dotfiles/git/.gitconfig $HOME/.gitconfig
