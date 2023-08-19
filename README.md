# Dotfiles Repository
Welcome to my dotfiles repository! This repository contains configuration files and dotfiles to help you set up your development environment just the way I like it.

## Requirements

Before you get started, make sure you have the following tools and software installed:

- Python 3.x
- Git (for cloning this repository)

## Installation

To install the dotfiles, follow these steps:

1. Clone the repository to your local machine and cd into into it
	```sh
	git clone https://github.com/altxtech/dotfiles.git
	cd dotfiles
	```
2. Run the installation script with the desired module(s). For example, to install the Neovim dotfiles:

	```sh
	python3 install.py nvim
	```

	You can also install multiple modules at once:
	```sh
	python3 install.py nvim zsh
	```

	If you want to install all available modules, use:

	```sh
    python3 install.py all

    Follow any prompts or messages to confirm or complete the installation.
	```

## Modules
### Neovim (nvim)

The Neovim module contains configurations for the Neovim text editor.

    Location: nvim/
    Installation: Run python3 install.py nvim


## License

This repository is licensed under the MIT LICENSE.
