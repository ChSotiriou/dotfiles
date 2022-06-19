eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

[[ -f ~/.config/.Xmodmap ]] && xmodmap ~/.config/.Xmodmap
[[ -f ~/.Xresources ]] && xrdb ~/.Xresources

# run on gpu
exec i3
