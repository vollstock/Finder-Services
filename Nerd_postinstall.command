#!/bin/bash

# Install Command Line Tools

echo "-------------------------------------------------------------------------"
echo "Installing Command Line Tools"
echo "-------------------------------------------------------------------------"
echo ""
xcode-select --install

# Install Homebrew
echo ""
echo "-------------------------------------------------------------------------"
echo "Installing Homebrew"
echo "-------------------------------------------------------------------------"
echo ""
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Define my .bash_profile

echo ""
echo "-------------------------------------------------------------------------"
echo "Setting custom .bash_profile"
echo "-------------------------------------------------------------------------"
echo ""
cat > ~/.bash_profile <<EOF
# Aliases
alias ll="ls -lGF"
alias la="ls -laGF"

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Set custom bash prompt
export PS1="\[\033[1;35m\]\w\[\033[0m\]$ "
#\[\033[1;35m\]\u\[\033[0m\]:

# MacPorts Installer addition on 2016-01-22_at_11:42:56: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Set global editor to be nano
# I know, VI and shit but to be honest, that’s
export VISUAL="nano"
export EDITOR="nano"
EOF


# Add nano syntax highlighting
echo ""
echo "-------------------------------------------------------------------------"
echo "Installing nano syntax highlighting"
echo "-------------------------------------------------------------------------"
echo ""
git clone git://github.com/serialhex/nano-highlight.git ~/.nano

cat > ~/.nanorc <<EOF
## spifftastic nano highlighting nano!!
include "~/.nano/nanorc.nanorc"

## C/C++
include "~/.nano/c.nanorc"

## Python
include "~/.nano/python.nanorc"

## Bourne shell scripts
#include "~/.nano/bash.nanorc"

## CSS
include "~/.nano/css.nanorc"

## Javascript
include "~/.nano/js.nanorc"

## PHP
include "~/.nano/php.nanorc"

## HTML
include "~/.nano/html.nanorc"

## Markdown
include "~/.nano/markdown.nanorc"


# Tab size
set tabsize 2
set tabstospaces
EOF

echo ""
echo "-------------------------------------------------------------------------"
echo ""
read -p "Finished. Press any key to continue... " -n1 -s
