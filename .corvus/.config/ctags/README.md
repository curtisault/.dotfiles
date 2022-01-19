# CTAGS

## Info

This uses universal-ctags which is an open source fork of it's parent exuberant-ctags.

Can be installed via homebrew

```
brew unlink ctags
brew install universal-ctags
```

[Documentation](https://docs.ctags.io/en/latest/index.html)

## Setup

Currently Elixir and Elm are supported languages so just specify those when running setup in `$HOME`

```
ctags -R --languages=-all,+Elm,+Elixir -V
```
