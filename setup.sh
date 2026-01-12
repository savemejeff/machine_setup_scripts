#/usr/env bash

if [ ! -f ~/.zshrc ]; then
	echo "write ~/.zshrc"

	echo "export PROMPT='%~ %# '" > ~/.zshrc
	source ~/.zshrc
fi

if [ ! -x "$(command -v xcode-select)" ]; then
	echo "install xcode commandline tools"

	xcode-select --install
fi
if [ ! -x "$(command -v brew)" ]; then
	echo "install homebrew"

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"	
fi
if [ ! -x "$(command -v git)" ]; then
	echo "install git"

	brew install git
fi

