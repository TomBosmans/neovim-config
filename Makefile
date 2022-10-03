ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

symlink:
	ln -s ${ROOT_DIR}/ ~/.config/nvim

symlink_clean:
	rm -rf ~./config/nvim
