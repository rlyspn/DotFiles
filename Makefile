MV=mv
CP=cp
RM=rm

deploy: bashrc vim terminator zsh

bash:
	echo "Deploying bashrc."
	$(CP) bashrc ~/.bashrc

vim:
	echo "Deploying vimrc."
	$(CP) vimrc .vimrc
	echo "Deploying .vim directory."
	$(RM) -r ~/.vim 
	$(CP) -r vim ~/.vim

terminator:
	echo "Deploying terminator config."
	mkdir ~/.config/terminator
	$(CP) terminator ~/.config/terminator/config

zsh:
	$(CP) zshrc ~/.zshrc
	$(CP) -r oh-my-zsh ~/.oh-my-zsh
