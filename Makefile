# makefile for setting up my config files

.PHONY: \
	dunst locale ranger zathura issue packer xmodmap vconsole zsh vim qutebroser

dunst:
	@mkdir -p ${HOME}/.config/dunst
	@ln -s ${PWD}/dunst/dunstrc ${HOME}/.config/dunst/dunstrc

locale:
	@sudo ln -sf ${PWD}/etc/locale.conf /etc

vconsole:
	@sudo ln -sf ${PWD}/etc/vconsole.conf /etc

issue:
	@sudo ln -sf ${PWD}/etc/issue /etc

packer:
	sudo pacman -S wget fakeroot jshon expac
	cd /tmp
	wget https://aur.archlinux.org/packages/pa/packer/PKGBUILD
	makepkg
	pacman -U packer-*.pkg.tar.xz packer

ranger:
	@mkdir -p ${HOME}/.config/ranger
	@$(foreach file,${PWD}/ranger/*,ln -s $(file) ${HOME}/.config/ranger;)

zsh:
	# use oh-my-zsh from git repo
	@ln -s ${PWD}/zsh/.zshrc ${HOME}
	@ln -s ${PWD}/zsh/.zprofile ${HOME}
	#@ln -s ${PWD}/zsh/aliases.zsh /usr/share/oh-my-zsh/custom
	@ln -s ${PWD}/zsh/aliases.zsh ~/src/oh-my-zsh/custom

xmodmap:
	@ln -s ${PWD}/X/.Xmodmap ${HOME}

vim:
	@cp ${PWD}/vim/.vim ${HOME}
	@mkdir -p ${HOME}/.vim/undo

zathura:
	@ln -s ${PWD}/zathura/zathurarc ${HOME}

qutebrowser:
	ln -s ${PWD}/qutebroser ~/.config

.PHONY: all etc
etc:
	issue locale vconsole
all:
	dunst locale ranger zathura issue packer xmodmap vconsole zsh vim qutebroswer
