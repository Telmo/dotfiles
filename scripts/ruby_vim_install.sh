#!/bin/bash
brew rm wim
rbenv install .dotfiles/scripts/1.9.3-p327-patch
rbenv global 1.9.3-p327-patch
brew install vim
