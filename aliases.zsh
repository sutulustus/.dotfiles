# -------------------------------------------------------------------
# fast navigate to directories
# -------------------------------------------------------------------
alias proj='cd ~/Projects'
alias theme='cd ~/Projects/themeforest'
alias code='cd ~/Projects/codecanyon'
alias other='cd ~/Projects/other'
alias apps='cd ~/Projects/railsapps'
alias pro='cd ~/Projects/railsapps/boom/pro'
alias api='cd ~/Projects/railsapps/boom/api'
alias crm='cd ~/Projects/railsapps/boom_crm'
alias hub='cd ~/Projects/railsapps/boom_hub'
alias dscripts='cd ~/Projects/deploy_scripts'
alias dfiles='cd ~/Projects/dockerfiles'
alias dot='cd ~/.dotfiles'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias lh='ls -d .*' # show hidden files/directories only
alias lsd='ls -aFhlG'
alias l='ls -al'
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias 'dus=du -sckx * | sort -nr' #directories sorted by size

alias 'wordy=wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias 'filecount=find . -type f | wc -l' # number of files (not directories)

# -------------------------------------------------------------------
# Usefull commands
# -------------------------------------------------------------------
alias ua='vi ~/.oh-my-zsh/custom/aliases.zsh' #update aliases file
alias rdm='rails db:migrate'
alias rdmt='rails db:migrate RAILS_ENV=test'
alias res='rake es:reindex'
#alias res='(cd ~/Projects/dockerfiles && docker compose exec pro-web rake es:reindex)'
#alias rdm='(cd ~/Projects/dockerfiles && docker compose exec pro-web rake db:migrate)'
#alias rdmt='(cd ~/Projects/dockerfiles && docker compose exec pro-web rake db:migrate RAILS_ENV=test)'
alias dprolog='(cd ~/Projects/dockerfiles && docker compose exec pro-web tail -f log/development.log)'
alias dprorestart='(cd ~/Projects/dockerfiles && docker compose restart pro-web)'
alias dproconsole='(cd ~/Projects/dockerfiles && docker compose exec pro-web rails c)'
alias dproroutes='(cd ~/Projects/dockerfiles && docker compose exec pro-web rake routes)'
alias dprobash='(cd ~/Projects/dockerfiles && docker compose exec pro-web bash)'
alias dproytest='(cd ~/Projects/dockerfiles && docker compose exec pro-web yarn test)'
alias dprotest='f() {(cd ~/Projects/dockerfiles && docker compose exec pro-web rails test "$1")};f'
alias dpropid='(cd ~/Projects/dockerfiles && docker compose exec pro-mq rm /opt/app/pro/tmp/pids/server.pid)'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gst='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gv='git log --pretty=format:'%s' | cut -d " " -f 1 | sort | uniq -c | sort -nr'
alias gmdev='git merge -m "merge develop branch" origin/develop'

# leverage aliases from ~/.gitconfig
alias gh='git hist'
alias gt='git today'

# curiosities 
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"
alias mup="mutagen-compose up"


alias 'rm=rm -i' # make rm command (potentially) less destructive
alias 'pear=/usr/local/Cellar/php@5.6/5.6.40/bin/pear'
alias sleep='pmset sleepnow'
