alias abl_projects='sudo encfs --public ~/.encrypted_projects ~/projects'
# alias encable='encfs -o allow_other ~/.encrypted_projects/ ~/projects/'

alias abl_vpn='sudo openconnect --protocol=pulse https://vpnssl.ableton.com'

[ -f "/home/stephan/.ghcup/env" ] && source "/home/stephan/.ghcup/env" # ghcup-env

function activate { . "$HOME/.virtualenvs/$1/bin/activate"; }
