export BROWSER=firefox
export EDITOR=nvim
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.emacs.d/bin:$PATH

##########
#Colour to man pages
man (){
	export LESS_TERMCAP_mb="[35m" # magenta
	export LESS_TERMCAP_md="[33m" # yellow
	export LESS_TERMCAP_me="[0m" # color reset
	export LESS_TERMCAP_se="[0m" # color reset
	export LESS_TERMCAP_so="[31m" # blue
	export LESS_TERMCAP_ue="[0m" # color rest
	export LESS_TERMCAP_us="[4m" # underline
	command man "$@"
}

##########

set -o vi
# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac
alias dotfiles='/usr/bin/git --git-dir=/home/vadim-laptop/.dotfiles/ --work-tree=/home/vadim-laptop'
