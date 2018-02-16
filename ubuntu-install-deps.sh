DEPS=realpath stow fish curl

sudo apt install "$DEPS"

# Install OMF
curl -L http://get.oh-my.fish | fish
