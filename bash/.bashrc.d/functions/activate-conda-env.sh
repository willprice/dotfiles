activate-conda-env() {
    local target_env="$1"; shift
    if [[ -v CONDA_PREFIX ]]; then 
        local current_env="${CONDA_PREFIX##*/}"
    fi

    if [[ "$current_env" != "$target_env" ]]; then
        conda activate "$target_env"
    fi
}
