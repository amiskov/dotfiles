# Nginx -----------------------------------------------------------------------
## Services
alias nginx.start='brew services start nginx'
alias nginx.stop='brew services stop nginx'
alias nginx.restart='brew services restart nginx'
alias nginx.check='nginx -t'

## Vhosts
alias nginx.sa='cd /usr/local/etc/nginx/sites-available && ls'
alias nginx.se='ls /usr/local/etc/nginx/sites-enabled && ls'


# System ----------------------------------------------------------------------
## Bash
alias ll='ls -alhF'
alias cpwd='pwd|pbcopy' # copy current path
alias prfl='subl ~/.bash_profile'
alias alss='subl ~/.bash_aliases'

## Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

## Show/hide dotfiles
alias showDotFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideDotFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


# Racket ----------------------------------------------------------------------
alias exerkt="cd /Users/andreymiskov/Exercism/racket/ && ls"


# Personal --------------------------------------------------------------------
alias pmdr="node ~/Projects/my/pomodoro/index.js"
alias notes="cd ~/Documents/Notes && ls"

## Playground
alias tmp="cd /private/tmp/my-temp && ls"

## Blog
alias cdblog='cd /Users/andreymiskov/Projects/my/andreymiskov.github.io'
alias blog='subl /Users/andreymiskov/Projects/my/andreymiskov.github.io'
alias drafts='subl /Users/andreymiskov/Projects/my/andreymiskov.github.io/_drafts'

## Diary
alias diary='code /Users/andreymiskov/Library/Mobile\ Documents/27N4MQEA55\~pro\~writer/Documents/'
alias goals='subl /Users/andreymiskov/Projects/my/my-goals/'

## Training
alias train='cd ~/Training && ls'
alias htdp='cd /Users/andreymiskov/Training/mooc_htdp && subl . && vuepress dev'


# Development -----------------------------------------------------------------
alias sandbox='cd ~/Projects/sandbox && ls'

## MongoDB
alias mongo.start='brew services start mongodb'
alias mongo.stop='brew services stop mongodb'
alias mongo.restart='brew services restart mongodb'

## Python
alias python=/usr/local/bin/python3 # map `python` command to 3rd version
alias pyenv.create="python3 -m venv env"
alias pyenv.activate="source env/bin/activate"
alias pyenv.ca="pyenv.create && pyenv.activate"
alias pyenv.deactivate="deactivate"

## Django
alias djserver="python3 manage.py runserver"

## MySQL
alias mysql.start="brew services start mysql"
alias mysql.stop="brew services stop mysql"
alias mysql.restart="mysql.stop && mysql.start"
alias mysql.cnf="subl /usr/local/etc/my.cnf"

## Editor
alias sc='subl .' # open current directory in Sublime
alias cdsubl='cd $HOME/Library/Application\ Support/Sublime\ Text\ 3/'

## Clojure
alias rclj='clojure -A:rebel'

## Projects
alias my='cd /Users/andreymiskov/Projects/my && ls'
alias hxlt='cd /Users/andreymiskov/Projects/Hexlet && ls'

## PHP Dev Server
alias phps='php -S localhost:8888'
alias php-s='php -S localhost:8888'

## PHP-FPM
alias php.start='brew services start php@7.1'
alias php.stop='brew services stop php@7.1'
alias php.restart='brew services restart php@7.1'
alias php.ini='cd /usr/local/etc/php/7.1/' # php.ini and php-fpm.ini

## Laravel
alias aserve='php artisan serve'

## Magento
alias sup='bin/magento s:up'
alias cf='bin/magento c:f'
alias cft='bin/magento c:f block_html'
alias cfl='bin/magento c:f layout'

## Git
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

## Slowdown Network (https://github.com/sitespeedio/throttle)
alias netslow='throttle --profile 3gslow'
alias netslow.stop='throttle --stop'
