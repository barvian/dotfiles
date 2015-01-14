echo "Changing shell…"
chsh -s /bin/zsh

echo "Linking Sublime Text configuration to Dropbox"
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/Dropbox/Development/Sublime\ Text/User

echo "Installing pathogen.vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

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
nvm install 0.10.32
nvm alias default 0.10.32
npm install -g npm

echo "Done."
