setup:
	@echo "Creating symlink for .hammerspoon config"
	@ln -s $${PWD}/.hammerspoon $${HOME}/.hammerspoon
.PHONY: setup