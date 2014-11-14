export CHARLIKE="/home/charlike"
export NVM_DIR="$CHARLIKE/.nvm"
export DEV_PATH="$CHARLIKE/dev"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use 0.11
cd ~/


# ALIASES #
# #########

# update this file (.bashrc)
alias brcup="cp $DEV_PATH/dotfiles/.bashrc ~/ && echo 'Updated.'"

# init nikoletka @ freenode
alias nikoletka="echo 'Starting ...' && node $DEV_PATH/nikoletka-bot/nikoletka-start.js"

# init badgelino demo server
alias blio="echo 'Badgelino.io started.' && node --harmony $DEV_PATH/badgelino/demo-server.js"

alias rm="rm -rf"
alias mkdir="mkdir -p"
alias myip="curl http://ipecho.net/plain; echo"
alias ..="cd .."
alias cd..="cd .."
alias fhere="find . -name"
alias free="free -mt"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# Git shortcuts #
# ###############

#1: undo
alias gback="git reset HEAD^ --hard"

#2: npm test
alias gnt="npm test"

#3: git push
alias gp="git push"

#4: git pull
alias gpl="git pull"

#5: git add
alias ga="git add"

#6: git commit
alias gci="git commit"

#7: git commit -m
alias gcm="gci -m"

#8: git add -A && git commit -m
alias gac="ga -A && gcm"

#9: #1 && #8
alias ntgac="gnt && gac"

#10: (8) 'commit from .bashrc' && git push
alias gap="gac 'commit from .bashrc' && git push"

#11: (2) (10)
alias ntgap="ntgac 'commit from .bashrc' && git push"


# Travis-CI #
# ###########
# login with github token in ~/.github-token file
alias trlog="travis login --github-token `cat $CHARLIKE/.github-token`"

# login and re-sync
alias sytr="trlog && travis enable -r"


# koreflow/dotfiles - templates #
# ###############################
alias kdf="gitclone koreflow/dotfiles"