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

## Usage Quick Ref

[Docs Ref](https://mpd.readthedocs.io/en/stable/user.html#using-mpd)

### Starting and Stopping MPD

The simplest (but not the best) way to start MPD is to simply type:

```
mpd
```

This will start MPD as a daemon process (which means it detaches from your terminal and continues to run in background). To stop it, send SIGTERM to the process; if you have configured a pid_file, you can use the --kill option:

```
mpd --kill
```

## The music directory and the database

The “music directory” is where you store your music files. MPD stores all relevant meta information about all songs in its “database”. Whenever you add, modify or remove songs in the music directory, you have to update the database, for example with mpc:

```
mpc update
```
