MV=mv
MKDIR=mkdir
CP=cp
RM=rm

.PHONY: deploy bashrc vim terminator zsh update

update:
	git submodule update --init --recursive

deploy: update bashrc vim terminator zsh

bash: update
	echo "Deploying bashrc."
	$(CP) bashrc ~/.bashrc

vim: update
	echo "Deploying vimrc."
	$(CP) vimrc ~/.vimrc
	echo "Deploying .vim directory."
	$(RM) -rf ~/.vim 
	$(CP) -r vim ~/.vim

terminator: update
	echo "Deploying terminator config."
	mkdir -p ~/.config/terminator
	$(CP) terminator ~/.config/terminator/config

zsh:
	$(CP) zshrc ~/.zshrc
	$(RM) -rf ~/.oh-my-zsh
	$(CP) -r oh-my-zsh ~/.oh-my-zsh
