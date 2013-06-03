
deploy: bashrc vim terminator

bash: bashrc
	echo "Deploying bashrc."
	cp bashrc ~/.bashrc

vim: vimrc vim
	echo "Deploying vimrc."
	cp vimrc .vimrc
	echo "Deploying .vim directory."
	rm -r ~/.vim 
	cp -r vim ~/.vim

terminator: terminator
	echo "Deploying terminator config."
	mkdir ~/.config/terminator
	cp terminator ~/.config/terminator/config
