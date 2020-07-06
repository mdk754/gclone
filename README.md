# gclone

> Simple utility to keep your local repo paths organized.


## How it Works

When cloning, it simply infers local path information from the given url. It
will then clone into the appropriate folder.

This is just a simple self-hack, so currently it is not configurable and uses
the following pattern:

```
~/git/$SERVER/$REPO_PATH
```

Where:

* `$SERVER` is the hostname of the remote.
* `$REPO_PATH` is everything after the hostname, except for the `.git` suffix.


## Example

```shell
$ gclone git@github.com:mdk754/gclone.git
Cloning into '/home/$USER/git/github.com/mdk754/gclone'...
```


## Installation

From your shell, just: `sudo ./install.sh`

This will place the executable into `/usr/local/bin` by default.
