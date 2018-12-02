# install zsh
brew install zsh
# To set zsh as your default shell, execute the following.
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install auto suggestions
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# setup fonts
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
# change the color theme in iterm2
# iTerm2 -> Preferences -> Profiles -> Text -> Font -> Change Font

# setup Powerlevel9k them
git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
# add below in the ~/.zshrc
POWERLEVEL9K_MODE='nerdfont-complete'
source ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# add alias
echo "alias ls='ls -G'" >> ~/.zshrc

# source the .zshrc
source ~/.zshrc

# for more details
https://medium.com/the-code-review/make-your-terminal-more-colourful-and-productive-with-iterm2-and-zsh-11b91607b98c