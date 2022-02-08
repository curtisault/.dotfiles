# Music Player Daemon

[Project Site](https://www.musicpd.org/)

[Docs](https://mpd.readthedocs.io/en/latest/user.html)

[IRC](ircs://irc.libera.chat:6697/#mpd)

## Installation

### Homebrew

```
brew {search|install} mpd
```

### Create configs, logs, db, etc

```
mkdir -p ~/.mpd/playlists
touch ~/.mpd/{mpd.conf,mpd.db,mpd.log,mpd.pid,mpdstate}
```

### Verification

```
ls ~/.mpd/
```

### Macos conf

```
music_directory "~/Music"
playlist_directory "~/.mpd/playlists"
db_file "~/.mpd/mpd.db"
log_file "~/.mpd/mpd.log"
pid_file "~/.mpd/mpd.pid"
state_file "~/.mpd/mpdstate"
auto_update "yes"
auto_update_depth "2"
follow_outside_symlinks "yes"
follow_inside_symlinks "yes"

audio_output {
 type "osx"
 name "CoreAudio"
 mixer_type "software"
}

decoder {
 plugin "mp4ff"
 enabled "no"
}

bind_to_address "127.0.0.1"
port "6600"
user "curtisault"

# Visualizer
audio_output {
 type "fifo"
 name "my_fifo"
 path "/tmp/mpd.fifo"
 format "44100:16:2"
 auto_resample "no"
 use_mmap "yes"
}
```
