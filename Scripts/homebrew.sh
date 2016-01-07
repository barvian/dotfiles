brew update
brew upgrade

TAPS=(
    homebrew/dupes
    homebrew/services
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
    mysql
    'homebrew/apache/httpd22 --with-brewed-openssl --with-mpm-event'
    'homebrew/apache/mod_fastcgi --with-homebrew-httpd22'
    'homebrew/php/php70'
    php70-opcache
    dnsmasq
)
brew install ${FORMULAS[@]}

brew cleanup
