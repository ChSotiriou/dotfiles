if [[ -z "${PYENV_INITIALIZED}" ]]; then
    export PROJECT_HOME=$HOME/Devel
    export PYENV_INITIALIZED=true
    source /usr/bin/virtualenvwrapper.sh

    # pyenv
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi
