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
if [ ! -x "$(command -v emacs)" ]; then
    echo "install emacs"
    brew install emacs
fi
if [ ! -f ~/Library/KeyBindings/DefaultKeyBinding.dict ]; then
    echo "write DefaultKeyBinding.dict"
    mkdir -p ~/Library/KeyBindings
    echo "{\n\"^/\" = (insertText:, \"\037\");\n}" > ~/Library/KeyBindings/DefaultKeyBinding.dict
fi

if [ ! -f ~/.emacs_stuff ]; then
    echo "download emacs_stuff"
    mkdir emacs_stuff
    curl https://raw.githubusercontent.com/rexim/simpc-mode/refs/heads/master/simpc-mode.el -o ~/.emacs_stuff/simpc-mode.el
fi

if [ ! -f ~/.emacs ]; then
    echo "creating .emacs"
    cp ./.emacs ~/.emacs
fi
