set -l candidate_path_directories \
      "$HOME/.cabal/bin" \
      "$HOME/code/go/bin" \
      "$HOME/.bin"\
      "$HOME/.gem/ruby/"*/bin \
      "$HOME/.rvm/bin" \
      "$HOME/.local/bin"
for dir in $candidate_path_directories
    add_to_path_if_exists "$dir"
end

# vim: set ft=fish:
