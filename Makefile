full: brew scripts

light: scripts

brew:
	echo Updating HomeBrew
	brew update
	echo Installing Swiftformat
	brew install swiftformat
	echo Swiftformat installed

scripts:
	echo Installing Git-Hooks
	sh install-hooks.sh
	echo Git-Hooks installed
	echo Installing Clean Swift Templates
	make -f Clean\ Swift/Makefile install_templates
	echo Clean Swift Templates installed
