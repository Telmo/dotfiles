# load default ubuntu .bashrc
if [ -f ~/.bash_ubuntu ]; then
	. ~/.bash_ubuntu
fi

# if .bash_functions if a file then source it
# if .bash_functions is a directory, then sourec all its files
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi
if [ -d ~/.bash_functions ]; then
	for function in ~/.bash_functions/*; do . $function; done
fi

# bash prompt
prompt () {
	PS1="\[\e[34m\]\u\[\e[37m\]@\[\e[36m\]\h\[\e[37m\]:\[\e[31m\]\w\[\e[37m\]$(git_branch)$ "
}
PROMPT_COMMAND=prompt
export PROMPT_COMMAND

complete -W "$(echo $(grep '^ssh ' .bash_history | sort -u | sed 's/^ssh //'))" ssh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
