source "$HOME/home-shared/etc/profile"
export SLURM_MAIL_USER="wp13824@bristol.ac.uk"

_proxy="http://xcat:3128"
export https_proxy="$_proxy"
export http_proxy="$_proxy"
