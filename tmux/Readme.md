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
`https://charlee.li/tmux-enhanced.html`


