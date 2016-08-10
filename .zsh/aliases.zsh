# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ,,='cd ..'
alias ,,,='cd ../..'

# ls
alias ls="ls -F"

# Git
alias gsu='git submodule update --init --recursive'
alias gs='git status'
compdef _git gs=git-status
alias gut='git'

# Mac OS X
alias o='open .'
alias screensaver='/System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

# Commands starting with % for pasting from web
alias %=' '
alias $=' '
