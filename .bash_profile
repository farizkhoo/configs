export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

GETCAR_DIR="$HOME/workspace/gitlab.com/getcar"
RUSTPROJ_DIR="$HOME/workspace/rust-projects"

alias vim="nvim"
alias vbp="vim ~/.bash_profile"
alias nvconf="vim ~/.config/nvim/init.vim"

cdgc () {
	cd $GETCAR_DIR/$1
}

_cdgc() {
	local cmd=$1 cur=$2 pre=$3
	local _cur compreply

	_cur=$GETCAR_DIR/$cur
	compreply=( $( compgen -d "$_cur" ) )
	COMPREPLY=( ${compreply[@]#$GETCAR_DIR/} ) 
	if [[ ${#COMPREPLY[@]} -eq 1 ]]; then
		COMPREPLY[0]=${COMPREPLY[0]}/
	fi
}

cdrp () {
	cd $RUSTPROJ_DIR/$1
}

_cdrp() {
	local cmd=$1 cur=$2 pre=$3
	local _cur compreply

	_cur=$RUSTPROJ_DIR/$cur
	compreply=( $( compgen -d "$_cur" ) )
	COMPREPLY=( ${compreply[@]#$RUSTPROJ_DIR/} ) 
	if [[ ${#COMPREPLY[@]} -eq 1 ]]; then
		COMPREPLY[0]=${COMPREPLY[0]}/
	fi
}

complete -F _cdgc -o nospace cdgc
complete -F _cdrp -o nospace cdrp

if [ -f $HOME/.bashrc ]; then
	source $HOME/.bashrc
fi
