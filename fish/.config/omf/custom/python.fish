alias py=bpython
alias py3=bpython3
alias py2=bpython2

alias ipy=ipython
alias ipy3=ipython3
alias ipy2=ipython2

eval (python -m virtualfish auto_activation)

if test -d ~/.pyenv
    set -x PYENV_ROOT "$HOME/.pyenv"
    set -x PATH "$PYENV_ROOT/bin" $PATH
end

add_to_python_path "$HOME/ml/lib"
