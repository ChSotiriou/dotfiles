# editor
alias v='nvim'
alias vim='nvim'
alias e='nvim'

# list
alias ls='exa --icons --long --header'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias lg='ls -la . | grep'
alias l.="ls -a | grep -E '^\.'"

alias als="7z l"

# chmod
alias chmod='chmod -c'

# change directory
alias ..='cd ..'

# safety stuff
alias rm='rm -i'
alias mv='mv -i'

# fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"

#  And He said: "Let there be color!"
alias egrep='grep -E'
alias grep='grep --color'
alias less='less -R'
alias ip='ip --color'

# Application Enhancements
alias du='dust'
alias df='df -h'

# free
alias free="free -mt"

# continue download
alias wget="wget -c"

# Aliases for software managment
# pacman or pm
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'

# grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# add new fonts
alias update-fc='sudo fc-cache -fv'

# check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'

# get fastest mirrors in your neighborhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 30 --number 10 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 30 --number 10 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 30 --number 10 --sort age --save /etc/pacman.d/mirrorlist"

# our experimental - best option for the moment
alias mirrorx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias mirrorxx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias ram='rate-mirrors --allow-root arch | sudo tee /etc/pacman.d/mirrorlist'

# Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# give the list of all installed desktops - xsessions desktops
alias xd="ls /usr/share/xsessions"

# opening common files
alias pdf='$READER'
alias img='nsxiv -a'

# utilities
alias sx='startx'
alias clip='wl-copy'
alias dv='devour'
alias drag='dragon-drop -a -x'

# dotfile management
alias conf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias rm="trash-put"

# git aliases
alias vs='git status'
alias va='git add'
alias vb='git branch'
alias vm='git merge'
alias vr='git restore'
alias vc='git commit'
alias vcl='git clone'
alias vp='git push'
alias vl='git log'

# goto aliases
alias gt='cd /tmp'
alias gc='cd ~/.config'
alias gb='cd /mnt/storagebox/'
alias gd='cd ~/Downloads/'
alias gD='cd ~/Documents/'
alias gm='cd /run/media'

alias fpga_env='source ~/Nextcloud/FPGA/fpga-tools/fpga_env'

alias timezoneUpdate='sudo tzupdate'

alias docker-kill-all='sudo docker ps -q | xargs sudo docker kill'
# alias docker-stop-rm-all='sudo docker ps -q | xargs -d $\'\n\' sh -c \'for arg do sudo docker stop "$arg"; sudo docker rm "$arg"; done\' _'

alias myth='sudo docker run --rm -v `pwd`:/data mythril/myth'
