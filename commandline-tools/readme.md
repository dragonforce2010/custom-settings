**Youtube downloader** 
- installation    
    ```
    brew install youtube-dl
    ```
    keep your youtube-dl to update
    ```
    brew upgrade youtube-dl
    ```
- usage
    ```
    youtube-dl -i -v -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --playlist-start [startNumber] --playlist-end [end number] [url]
    ```
    
    ```
    youtube-dl -i -v -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --playlist-start 2 --playlist-end 31 https://www.youtube.com/watch\?v\=Sjv2_mLsUck\&list\=PLGNVlSJ5fH_WdgjWsgZuoUqnGrmOZTxdq\&index\=2
    ```
- github: https://github.com/rg3/youtube-dl
- For any other video that you can not download using this tool, you can try this online tool https://youtubemultidownloader.net/playlists.html.

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

**Coursera-dl**
- installation
  ```
  pip install coursera-dl
  ```
- usage
  ```
  coursera-dl -u <user_name> -p <password> course_name
  ```
- github: https://github.com/coursera-dl/coursera-dl
