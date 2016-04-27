if [ -r ~/.bashrc ];
then
        source ~/.bashrc
fi
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"
if [ -e /home/will/.nix-profile/etc/profile.d/nix.sh ]; then . /home/will/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
envoy -t ssh-agent
source <(envoy -p)
