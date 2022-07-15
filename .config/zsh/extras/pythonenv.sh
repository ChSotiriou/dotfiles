export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh

# pyenv
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
