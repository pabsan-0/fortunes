# fortunes

This repo is a collection of custom fortunes, plus a few scripts to handle them. A fortune is simply a bit of interesting text. From `fortune` manpages:
```
NAME
       fortune - print a random, hopefully interesting, adage
```

Either use this repo as a template to store your fortunes, or kindly steal mine:
```
curl | bash # TODO
```

## Dependencies

- `sudo apt install fortune`


## Quickstart


### Set up your fortune collection

- Clone this repo to a fixed location. We recommend `/opt/custom_fortunes/collection_name`
- Right after cloning, run `update` to create a fortune index.
- Run the `./fortune` executable bash script to call fortunes from your collection:
    - It will look for a `fortunes/` dir next to it and call the original `fortune` passing its files as arguments.
    - You can symlink this file anywhere in your system with your fav name.


### Adding new fortunes

- Create or edit one of the text files in `fortunes/`
- Fortune text files hold many fortunes, separated by a line with only a `%` in it.
- To update the index you can:
    - Run the bare comamand: `strfile -c % bash_tips bash_tips.dat`
    - Use my utility script to update all: `./fortune --update`
- If getting missing characters on your fortunes, you probably need to do this update.



## Diving deeper

Here's some afterthoughts for repo users:

- If you haven't overwritten its reference in `$PATH`, you can still call the vanilla `fortune` as always. 
- Multiple fortune collections can be maintained like this by having multiple symlinks with different names, their fortunes stored in different repos.
- You can also have a repo with a maintained fortune and simply add a symlink to `/usr/share/games/fortunes/`, but you need to write your filenames everytime you call `fortune`.

And some useful links:

- Fortune manpages `man fortune`
- Good `fortune` learning materials https://askubuntu.com/questions/36523/creating-a-fortunes-file

