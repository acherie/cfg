# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Proxy setting
# Set Proxy
function proxyon() {     
	export {http,https,ftp}_proxy="http://192.168.33.1:1080" 
}

# Unset proxy
function proxyoff() {
	unset {http,https,ftp}_proxy
}
alias config='/usr/bin/git --git-dir=/home/vagrant/.cfg/ --work-tree=/home/vagrant'
