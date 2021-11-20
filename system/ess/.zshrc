# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
	fi
	
	# Greeting
	echo "Z shell refreshed"
	
	# Prompt
	PROMPT="%F{red}┌[%f%F{cyan}%m%f%F{red}]─[%f%F{yellow}%D{%H:%M-%d/%m}%f%F{red}]─[%f%F{magenta}%d%f%F{red}]%f"$'\n'"%F{red}└╼%f%F{green}$USER%f%F{yellow}$%f"
	# Export PATH$
	export PATH=~/.local/bin:/snap/bin:/usr/sandbox/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:$PATH
	
	# alias
	alias l='ls -lh --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
	#####################################################
	# Auto completion / suggestion
	# Mixing zsh-autocomplete and zsh-autosuggestions
	# Requires: zsh-autocomplete (custom packaging by Parrot Team)
	# Jobs: suggest files / foldername / histsory bellow the prompt
	# Requires: zsh-autosuggestions (packaging by Debian Team)
	# Jobs: Fish-like suggestion for command history
	source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	source /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
	# Select all suggestion instead of top on result only
	zstyle ':autocomplete:tab:*' insert-unambiguous yes
	zstyle ':autocomplete:tab:*' widget-style menu-select
	zstyle ':autocomplete:*' min-input 2
	bindkey $key[Up] up-line-or-history
	bindkey $key[Down] down-line-or-history
	
	
	##################################################
	# Fish like syntax highlighting
	# Requires "zsh-syntax-highlighting" from apt
	
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	
	# Save type history for completion and easier life
	HISTFILE=~/.zsh_history
	HISTSIZE=10000
	SAVEHIST=10000
	setopt appendhistory
	
	# Useful alias for benchmarking programs
	# require install package "time" sudo apt install time
	# alias time="/usr/bin/time -f '\t%E real,\t%U user,\t%S sys,\t%K amem,\t%M mmem'"
	# Display last command interminal
	echo -en "\e]2;Parrot Terminal\a"
	preexec () { print -Pn "\e]0;$1 - Parrot Terminal\a" }
	
	source ~/.zshpower/powerlevel10k.zsh-theme
	source ~/.zshpower/powerlevel10k.zsh-theme
	source ~/.zshpower/powerlevel10k.zsh-theme
	
	# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
	[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
	typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
	
	# Aliases
	# Writting the ":D" emoji shows as an output a cow saying something (with colors)
	alias :D="cowsay What the fuck dude | lolcat"
	# Moves to root directory
	alias gtr="cd /"
	# Moves to home directory
	alias gth="cd ~"
	# Moves to home directory
	alias gto="cd ~/Main/yonasuriv.github.io/"
	# Moves to user projects directory
	alias gtp="cd ~/Main/Proejcts"
	# Moves to user downloads directory
	alias gtd="cd ~/Downloads"
	# Open the .zshrc editor and then return to user projects directory (first check vscode, second vscodium)
	alias zc="cd;codium .zshrc && gtu"
	# Open the current directory in explorer
	alias explorer="xdg-open ."
	# Install apps (that you have downloaded, you have to be on that directory to exec this command)
	alias instpkg="sudo dpkg -i"
	# Update packages, remove any unnecessary ones and upgrades them
	alias fupg="sudo apt update && sudo apt autoremove && sudo apt --fix-broken install && sudo apt full-upgrade"
	# Update zshrc archive
	alias zshupg="sudo cp .zshrc ~/"
	
	# Git related
	# Shows a git log file resumed
	alias git logr="git log --oneline"
	
	# Configurations and fixes
	# Fix issues with snap apps not showing in launcher
	export XDG_DATA_DIRS="${XDG_DATA_DIRS}:/var/lib/snapd/desktop"
	
	# Blockchain related
	# Fix to ganache-cli, might break some other commands, it can be fixed by exiting the terminal and reopening again
	alias fixganache="export NODE_OPTIONS=--openssl-legacy-provider"
	
	# NVM/NPM related
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion 
