if [ -d "$HOME/code/go" ]
    set -x GOPATH "$HOME/code/go"
    if [ -d "$HOME/.bin" ]
        set -x GOBIN "$HOME/.bin"
    end
end
