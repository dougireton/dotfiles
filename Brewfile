# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

install pcre
install zsh
install openssl
install curl
install git --with-brewed-curl --with-brewed-openssl --with-pcre
install wget
install gnu-tar
install vim --disable-nls --override-system-vi
install ctags
install rbenv

# libyaml, readline, and libffi needed for Ruby
install libyaml
install readline
install libffi
install ruby-build
install the_silver_searcher
install tmux
install reattach-to-user-namespace
install weechat
# commandline json query tool
install jq

# python for awscli tools
install python
install awscli

# manage dotfiles
tap thoughtbot/formulae
install rcm

# homebrew cask
tap caskroom/cask
install brew-cask
cask install google-chrome
cask install evernote
cask install virtualbox
cask install vagrant --appdir=/Applications
cask install vmware-fusion --appdir=/Applications
cask install airparrot
cask install dropbox
cask install rdio
cask install flux
cask install kindle
cask install silverlight

# packer
tap homebrew/binary
install packer

# Remove outdated versions from the cellar
cleanup
