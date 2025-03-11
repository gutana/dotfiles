This repo contains some of the config files for my Linux dev env. Ensure you have Neovim v0.10, zsh (and oh-my-zsh), and kitty installed. 

#### Usage ####

First, clone this repo to your home directory 

`git clone https://github.com/gutana/dotfiles.git ~`

I like to keep all of my dotfiles all here, so we need to create some symlinks that point from the default config file locations to this directory:

`ln -s ~/dotfiles/.zshrc ~/.zshrc`

`ln -s ~/dotfiles/kitty ~/.config/kitty`

`ln -s ~/dotfiles/nvim ~/.config/nvim`

