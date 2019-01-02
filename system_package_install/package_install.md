# install python
```
brew install python
pip3 install virtualenv
```

# install miniconda
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
echo 'source /Users/michael.zhang/miniconda3/bin/activate' >> ~/.bash_profile
source ~/.bash_profile
```
create/activate/deactive a python env
```
conda create -n tensorflow python=3.6
source activate tensorflow
conda deactivate
```

# intall z
brew install z


# install rvm 
```
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source /Users/michael.zhang/.rvm/scripts/rvms
```

# install nvm
```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

nvm install 8.12
```

# install ruby 2.5
```
rvm install 2.5
```

# install tmux
```
brew install tmux
```

# some tools you may want 
## youtube downloader https://github.com/rg3/youtube-dl
```
brew install youtube-dl
```
Example:
```
youtube-dl -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --playlist-start 32 https://www.youtube.com/watch?v=Sjv2_mLsUck&list=PLGNVlSJ5fH_WdgjWsgZuoUqnGrmOZTxdq&index=32
```

# Mac OS Settings
## Make your repeatable keys faster
```
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```

## mac system shortcuts
```
shift + cmd + j: previous space
shift + cmd + k: next space
shift + cmd + i: show all the windows
shift + cmd + o: show all the instances of a app
```

## mac softwares
- irvue
- contexts
- alfred
- sizeup

# interesting commands to install
https://www.jianshu.com/p/f921d4c59bb7
https://www.zhihu.com/question/20273259
```
brew install boxes fortune cowsay ponysay sl asciiquarium myman
```

Watch starwars in command line, lol
```
brew install telnet
telnet towel.blinkenlights.nl 
```
