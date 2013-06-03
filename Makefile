
all: bashrc vim terminator

bash: bashrc
	cp bashrc ~/.bashrc

vim: vimrc vim
	cp vimrc .vimrc
	rm -r ~/.vim 
	cp -r vim ~/.vim

terminator: terminator
	mkdir ~/.config/terminator
	cp terminator ~/.config/terminator/config
