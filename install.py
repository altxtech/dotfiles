#!/usr/bin/env python3
import os
import sys

def symlink_dotfiles(source, destination):
    try:
        os.symlink(source, destination)
        print(f"Symlink created: {destination} -> {source}")
    except FileExistsError:
        print(f"Symlink already exists: {destination}")

def install_dotfiles(source, dest):

    '''
    'source as relative path to the repository's root directory
    'dest' as absolute path
    '''

    config_dir = os.path.expanduser(dest)
    dotfiles_dir = os.path.join(os.getcwd(), source)

    if not os.path.exists(config_dir):
        os.makedirs(config_dir)

    symlink_dotfiles(dotfiles_dir, config_dir)

def main():

    if len(sys.argv) < 2:
        print("Usage: install.py [module]")
        sys.exit(1)


    requested_modules = sys.argv[1:]
    ia = 'all' in requested_modules # ia for "install all"

    for mod in requested_modules:
        if mod == "nvim" or ia:
            install_dotfiles('nvim', '~/.config/nvim')
        else:
            print(f"Unknown module: {mod}")
            sys.exit(1)

if __name__ == "__main__":
    main()
