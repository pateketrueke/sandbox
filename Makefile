clean:
	@docker system prune -a
	@sudo apt autoremove
	@sudo apt clean
	@rm -rf $(HOME)/.npm/*
	@rm -rf $(HOME)/.cache/*
	@rm -rf $(HOME)/.npm-global/*
	@rm -rf $(HOME)/.vscode-remote/*

purge:
	@sudo rm -rf /vscode/extensionsCache/*
	@sudo rm -rf /vscode/serverCache/*
	@sudo rm -rf /vscode/bin/linux-x64/*

check:
	@du -h -d 1 $(HOME)
	@du -h -d 2 /vscode
