full: brew scripts

light: scripts

brew:
	echo Updating HomeBrew
	brew update
	echo Installing Swiftformat
	brew install swiftformat
	echo Swiftformat installed
	sudo gem install colorize

scripts: install-hooks

install-hooks:
	cp config.swiftformat ../
	cp commit-msg ../.git/hooks/
	cp pre-commit ../.git/hooks/