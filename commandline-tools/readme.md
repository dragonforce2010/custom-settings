**Youtube downloader** 
- installation    
    ```
    brew install youtube-dl
    ```
- usage
    ```
    youtube-dl -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --playlist-start 2 --playlist-end 31 https://www.youtube.com/watch\?v\=Sjv2_mLsUck\&list\=PLGNVlSJ5fH_WdgjWsgZuoUqnGrmOZTxdq\&index\=2
    ```
- github: https://github.com/rg3/youtube-dl

**Youtube downloader mp3**
- installation
    ```
    git clone https://github.com/jweslley/youtube-dl-mp3.git
    cd youtube-dl-mp3
    sudo cp cd youtube-dl-mp3 /usr/loca/bin/
    brew install ffmpeg
    ```
- usage
    ```
    youtube-dl-mp3 "video-url"
    ```
- github: https://github.com/jweslley/youtube-dl-mp3
