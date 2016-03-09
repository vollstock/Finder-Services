# Nerd post install

A simple shell script that installs some stuff and configures the terminal to my taste.

- xCode Command Line Tools
- [Homebrew](http://brew.sh/)
- Custom .bash_profile
- [Nano syntax highlighting](https://github.com/serialhex/nano-highlight) by [serialhex](https://github.com/serialhex)


# Finder Services

Some services I have been missing in Apples Finder.
Basically it's simple Automator workflows that I have created to make my life easier.
I'd be moire thab happy if it could make yours a little easier, too :-)

Enjoy.

**Copy path to clipboard**

This will copy the location of a file you have selected in Finder to your clipboard.
I find this very useful when sharing a file location with my co-workers.

**Show/Hide hidden files**

Will tell the Finder to display or hide hidden files.
Mac OS uses hidden directories for the stuff you usually don't need. But also on Webservers and remote computers I occasionally find the need to display these files.
It needs to restart the Finder.

This is the shell script code, these workflows are running:

```bash
defaults write com.apple.finder AppleShowAllFiles FALSE
killall Finder
```

## Installation

Simply double click one of the files and it will ask you to open it in Automator or install it.
It will install to this folder `~/Library/Services/`.
