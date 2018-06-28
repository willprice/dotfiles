. /mnt/storage/scratch/wp13824/vil/home-shared/etc/profile

eval "$(direnv hook bash)"
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's
# auto-paging feature:
# export SYSTEMD_PAGER=

modules=('languages/anaconda3/5.2.0-tflow-1.7'
         Autotools
         tools/git/2.18.0
         Autoconf
         Automake
         M4
         CMake
         bzip2
         cURL
         GCCcore/6.4.0
)

module add "${modules[@]}" > /dev/null 2>&1
