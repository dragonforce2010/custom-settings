# install python
```
brew install python
pip3 install virtualenv
```
install miniconda
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


# install rvm 
```
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source /Users/michael.zhang/.rvm/scripts/rvms
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