echo "Changing shell…"
sudo echo "/usr/local/bin/zsh" >> /etc/shells && chsh -s /usr/local/bin/zsh

echo "Linking Sublime Text configuration to Dropbox"
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/Dropbox/Development/Sublime\ Text/User

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
nvm install stable
nvm alias default stable

echo "Done."
