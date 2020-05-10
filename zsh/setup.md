# install zsh

brew install zsh

# To set zsh as your default shell, execute the following

sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh

# install oh my zsh

sh -c "$(curl -fsSL <https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)>"

# install auto suggestions

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# setup fonts

brew tap caskroom/fonts
brew cask install font-hack-nerd-font

# change the color theme in iterm2

# iTerm2 -> Preferences -> Profiles -> Text -> Font -> Change Font

# setup Powerlevel9k them

git clone <https://github.com/bhilburn/powerlevel9k.git> ~/powerlevel9k

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

# customized prompt

```
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='╭─$fg[yellow]$(pwd)$reset_color%} $(git_prompt_info)%{$fg[yellow]%}⚡%{$reset_color%}
╰─%f➤ %f'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
```

# for more details

<https://medium.com/the-code-review/make-your-terminal-more-colourful-and-productive-with-iterm2-and-zsh-11b91607b98c>

# add more different themes

you can follow the steps here: `https://github.com/sorin-ionescu/prezto`

Installation
Prezto will work with any recent release of Zsh, but the minimum required version is 4.3.11.

Launch Zsh:

`zsh`
Clone the repository:

`git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
Create a new Zsh configuration by copying the Zsh configuration files provided:`

```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

Note: If you already have any of the given configuration files, ln will cause error. In simple cases you can load prezto by adding the line source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" to the bottom of your .zshrc and keep the rest of your Zsh configuration intact. For more complicated setups, it is recommended that you back up your original configs and replace them with the provided prezto runcoms.

Set Zsh as your default shell:

`chsh -s /bin/zsh`
Open a new Zsh terminal window or tab.

Troubleshooting
If you are not able to find certain commands after switching to Prezto, modify the PATH variable in ~/.zprofile then open a new Zsh terminal window or tab.

Updating
Run zprezto-update to automatically check if there is an update to zprezto. If there are no file conflicts, zprezto and its submodules will be automatically updated. If there are conflicts you will instructed to go into the $ZPREZTODIR directory and resolve them yourself.

To pull the latest changes and update submodules manually:

```
cd $ZPREZTODIR
git pull
git submodule update --init --recursive
```

Usage
Prezto has many features disabled by default. Read the source code and accompanying README files to learn of what is available.

Modules
Browse /modules to see what is available.
Load the modules you need in `~/.zpreztorc` then open a new Zsh terminal window or tab.
Themes
For a list of themes, type `prompt -l`.

To preview a theme, type `prompt -p name`.

Load the theme you like in `~/.zpreztorc` then open a new Zsh terminal window or tab.

sorin theme Note that the 'git' module may be required for special symbols to appear, such as those on the right of the above image. Add 'git' to the pmodule list (under zstyle ':prezto:load' pmodule \ in your ~/.zpreztorc) to enable this module.
