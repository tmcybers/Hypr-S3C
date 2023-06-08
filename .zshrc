# Created by tmcyber for 5.9

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Starship start
eval "$(starship init zsh)"


## Starship conf and custom
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export STARSHIP_SHELL=zsh

#Display specs
nitch

# Aliases
alias vc='code'  # gui code editor

# Plug-ins
plugins=(
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)


#Display Pokemon
#pokemon-colorscripts --no-title -r 1,3,6

#Display gif
#kitten icat --align left ~/.config/neofetch/pochita.gif
