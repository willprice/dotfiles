fzf_key_bindings

if command_exists rg
    set -x FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
    set -x FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
end
