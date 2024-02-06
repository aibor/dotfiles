[[ -e ~/.alias ]] && . ~/.alias

# http://noqqe.de/blog/2012/03/10/git-shell-environment-tricks/
GIT_THEME_PROMPT_DIRTY='*'

git_prompt_info() {
	ref=$(git symbolic-ref --short HEAD 2>/dev/null) || return
	echo -ne "${ref}$(parse_git_dirty) "
}

parse_git_dirty() {
	if [[ -n $(git status --porcelain 2>/dev/null) ]]; then
		echo "$GIT_THEME_PROMPT_DIRTY"
	else
		echo "$GIT_THEME_PROMPT_CLEAN"
	fi
}

PS1="${PS1/>>/'\[\033[1;33m\]'\$(git_prompt_info)'\[\033[1;37m\]>>'}"

export GOPATH=/home/aibo/.local/share/go

. /usr/share/fzf/key-bindings.bash
. /usr/share/fzf/completion.bash

alias sf='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias sfr='sf -l root'
