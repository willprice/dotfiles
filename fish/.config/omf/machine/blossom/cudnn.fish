set --local  CUDNN_ROOT      "$HOME/lib/cudnn-5.1/cuda"
set --export LD_LIBRARY_PATH "$CUDNN_ROOT/lib64:$LD_LIBRARY_PATH"
