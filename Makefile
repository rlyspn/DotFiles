SYM=ln -s
RM=rm

deploy: bashrc vim terminator

bash:
	echo "Deploying bashrc."
	$(SYM) bashrc ~/.bashrc

vim:
	echo "Deploying vimrc."
	$(SYM) vimrc .vimrc
	echo "Deploying .vim directory."
	$(RM) -r ~/.vim 
	$(SYM) -r vim ~/.vim

terminator:
	echo "Deploying terminator config."
	mkdir ~/.config/terminator
	$(SYM) terminator ~/.config/terminator/config
