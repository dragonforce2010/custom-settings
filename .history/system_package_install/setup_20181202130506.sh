# install rvm 
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source /Users/michael.zhang/.rvm/scripts/rvm
# install ruby 2.5
rvm install 2.5

# install tmux
brew install tmux

# some tools you may want 
## youtube downloader https://github.com/rg3/youtube-dl
```brew install youtube-dl```
Example:
```
youtube-dl -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --playlist-start 32 https://www.youtube.com/watch?v=Sjv2_mLsUck&list=PLGNVlSJ5fH_WdgjWsgZuoUqnGrmOZTxdq&index=32
```