# install tmux

brew install tmux

# Install tmuxinator from github `https://github.com/tmuxinator/tmuxinator`

`gem install tmuxinator`

# Configure the tmux

- download .tmux.conf from github `https://github.com/dragonforce2010/custom-settings/tree/master/tmux`

# set your terminal to use tmux automically in ~/.bash_profile

# set terminal to use tmux automatically

```
if [ -z "$TMUX" ]; then
  tmux new -s default
fi
```

# Settings reference
<<<<<<< HEAD
`https://charlee.li/tmux-enhanced.html`

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
=======

`https://charlee.li/tmux-enhanced.html`
>>>>>>> 7f6a370ee15efe1e53382345eea6dc98aff0a93f
