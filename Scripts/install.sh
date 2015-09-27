echo "Changing shell…"
chsh -s /bin/zsh

echo "Linking Sublime Text configuration to Dropbox"
rm -r ~/.atom
ln -s ~/Dropbox/Apps/Atom ~/.atom

echo "Installing pathogen.vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Installing vim plugins"
git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle/sensible
git clone git://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp
git clone git://github.com/editorconfig/editorconfig-vim ~/.vim/bundle/editorconfig
git clone git://github.com/tpope/vim-surround.git ~/.vim/bundle/surround
git clone git://github.com/vim-scripts/PreserveNoEOL.git ~/.vim/bundle/preservenoeol

echo "Hiding files…"
SetFile -a "V" ~/Readme.markdown ~/LICENSE ~/Scripts

echo "Excluding everything from git…"
echo '*' >> ~/.git/info/exclude

echo "Installing Homebrew…"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
./Scripts/homebrew.sh

echo "Installing Ruby…"
rbenv install 2.1.3
rbenv global 2.1.3

echo "Installing Node…"
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
nvm install 0.12.4
nvm alias default 0.12.4
npm install -g npm

echo "Configuring Apache, MySQL, and PHP"
./Scripts/amp.sh

echo "Done."
