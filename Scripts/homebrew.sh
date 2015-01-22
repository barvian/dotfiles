brew update
brew upgrade

TAPS=(
    homebrew/dupes
    homebrew/versions
)
brew tap ${TAPS[@]}

FORMULAS=(
    rbenv
    ruby-build
    rbenv-gem-rehash
    imagemagick
    libxml2
    libxslt
    heroku
    vim
    the_silver_searcher
)
brew install ${FORMULAS[@]}

brew cleanup
