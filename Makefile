setup_hammerspoon:
	@echo "Copying hammerspoon config to ~/.hammerspoon"
	@echo "You may need to run 'brew install hammerspoon' first"
	@cp -r $${PWD}/hammerspoon.lua $${HOME}/.hammerspoon/init.lua

setup_zsh:
	@echo "Copying zsh config to ~/.zsh"
	@echo "You may need to run 'brew install zsh' first"
	@cp -r $${PWD}/.zshrc $${HOME}/.zshrc
	@cp -r $${PWD}/.zshrc.local $${HOME}/.zshrc.local

backup:
	@echo "Backing up existing config files"
	@cp -r $${HOME}/.hammerspoon/init.lua $${PWD}/hammerspoon.lua
	@cp -r $${HOME}/.zshrc $${PWD}/.zshrc
	@cp -r $${HOME}/.zshrc.local $${PWD}/.zshrc.local
