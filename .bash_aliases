# Nginx
## Services
alias nginx.start='brew services start nginx'
alias nginx.stop='brew services stop nginx'
alias nginx.restart='brew services restart nginx'
alias nginx.check='nginx -t'

# PHP-FPM 7.1
alias php.start='brew services start php@7.1'
alias php.stop='brew services stop php@7.1'
alias php.restart='brew services restart php@7.1'
alias php.ini='cd /usr/local/etc/php/7.1/' # php.ini and php-fpm.ini

# PHP-FPM 7.0
# alias php.start='brew services start php@7.0'
# alias php.stop='brew services stop php@7.0'
# alias php.restart='brew services restart php@7.0'
# alias php.ini='cd /usr/local/etc/php/7.0/' # php.ini and php-fpm.ini

## Vhosts
alias nginx.sa='cd /usr/local/etc/nginx/sites-available && ls'
alias nginx.se='ls /usr/local/etc/nginx/sites-enabled && ls'

# MongoDB
alias mongo.start='brew services start mongodb'
alias mongo.stop='brew services stop mongodb'
alias mongo.restart='brew services restart mongodb'

# Python
alias pyenv.create="python -m venv env"
alias pyenv.activate="source env/bin/activate"
alias pyenv.deactivate="deactivate"

# MySQL
alias mysql.start="brew services start mysql"
alias mysql.stop="brew services stop mysql"
alias mysql.restart="mysql.stop && mysql.start"
alias mysql.cnf="subl /usr/local/etc/my.cnf"

# Мой помидоный таймер
alias pmdr="node ~/Projects/my/pomodoro/index.js"

# Notes
alias notes="cd ~/Documents/Notes && ls"

# System
alias ll='ls -alF'
alias cpwd='pwd|pbcopy' # скопировать текущий путь в буфер

## Show/hide dotfiles
alias showDotFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideDotFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Development
alias sandbox='cd ~/Projects/sandbox && ls'
alias php-s='php -S localhost:8888'
alias sc='subl .'

# Oggetto
alias ogg='cd ~/Projects/oggetto && ls'
alias oa='cd ~/Projects/oggetto/oggetto-academy && ls' # Репозитории Академии на Гитхабе
alias fh='cd ~/Projects/oggetto/oggetto-academy/frontend-handbook && ls'

# Training
alias train='cd ~/Training && ls'

# Projects
alias my='cd /Users/andreymiskov/Projects/my && ls'

# Blog
alias cdblog='cd /Users/andreymiskov/Projects/my/andreymiskov.github.io'
alias blog='subl /Users/andreymiskov/Projects/my/andreymiskov.github.io'
alias drafts='subl /Users/andreymiskov/Projects/my/andreymiskov.github.io/_drafts'

# Diary
alias diary='subl /Users/andreymiskov/Library/Mobile\ Documents/27N4MQEA55\~pro\~writer/Documents/Diary'

# PHP Server
alias phps='php -S localhost:8888'

# Laravel
alias aserve='php artisan serve'

# Git
alias glol='git lol'
alias gst='git st'
alias gco='git co'
alias gcom='git co master'
alias gmm='git merge master'
alias gbr='git br'
alias gci='git ci'
alias gpl='git pull'
alias gpsh='git push'
alias gdf='git diff'


# Slowdown Network (https://github.com/sitespeedio/throttle)
alias netslow='throttle --profile 3gslow'
alias netslow.stop='throttle --stop'
