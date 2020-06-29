full: brew scripts

light: scripts

brew:
	echo Updating HomeBrew
	brew update
	echo Installing Swiftformat
	brew install swiftformat
	echo Swiftformat installed
	echo Installing GitHub
	brew install github/gh/gh
	echo GitHub installed

scripts: install-hooks

install-hooks:
	cp config.swiftformat ../
	cp githooks/* ../.git/hooks