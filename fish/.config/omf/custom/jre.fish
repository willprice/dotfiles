# Do not change this unless you want to completely by-pass Arch Linux' way
# of handling Java versions and vendors. Instead, please use script `archlinux-java`
set -x PATH $PATH /usr/lib/jvm/default/bin
set -x JAVA_HOME /usr/lib/jvm/default
