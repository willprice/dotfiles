set -l CONDA_FISH_PATH "$HOME/.miniconda3/etc/fish/conf.d/conda.fish"
if [ -f "$CONDA_FISH_PATH" ]
    source "$CONDA_FISH_PATH"
end
