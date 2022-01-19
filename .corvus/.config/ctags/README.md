# CTAGS

## Info

This uses universal-ctags which is an open source fork of it's parent exuberant-ctags.

Can be installed via homebrew

```
brew unlink ctags
brew install universal-ctags
```

[Documentation](https://docs.ctags.io/en/latest/index.html)

## Global Setup

1. Copy `options.ctags`
2. Run the following in `$HOME`

```
ctags
```

## Project Specific

1. Go to root of project
2. Specify options (e.g. crowbar)

```
ctags -R --exclude=.backups
```
