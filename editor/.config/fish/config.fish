set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
set -g fish_user_paths "$HOME/.poetry/bin"
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -gx fish_user_paths "$HOME/.cargo/bin" $fish_user_paths

set -x GOPATH (go env GOPATH)
set -x PATH $PATH (go env GOPATH)/bin

# flutter

set -g fish_user_paths "$HOME/flutter/bin" $fish_user_paths

# pyenv
set -x PYENV_ROOT $HOME/.pyenv
status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)
