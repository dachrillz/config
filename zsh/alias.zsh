# just some convenience aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -Ahl'
alias lll='ls -Ahls'
alias df='df -h'
alias :q='exit'
alias pac='sudo pacman -S'
alias aur='packer -S'
alias syu='sudo pacman -Syu'
alias rncs='sudo pacman -Rncs'
# remove orphaned packages
alias pacro="pacman -Qtdq > /dev/null && sudo pacman -Rns \$(pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"

alias gibs='~/gdrive/gibs'

# programs
alias yt='youtube-dl'
alias c='pcalc'
alias grep='ack'
alias t=tungsten
alias mix=alsamixer

alias tab='i3-msg layout tabbed && '

# config files
alias i3c='vim ~/.i3/config'
alias i3s='vim ~/.i3/i3status.conf'
alias aka='vim ~/.zsh/alias.zsh'

# start vim with sudo rights (with some fasd magic)
#alias suv='sudo vim -u ~/.vimrc +"colorscheme desert"'
alias sv='f -e "sudo vim"'

# list files in current dir not older than 5 minutes
# could be appendend with |xargs -r0 rm to delete them
alias findnew='find ./ -type f -cmin -5 -print0'

# find Raspberry-Pis in my network
alias lspi='sudo nmap -sP 192.168.112.0/24 | grep Pi -B 2'
alias burnpi="sudo dd if='${HOME}/dwl/iso/petPi.img' of=/dev/mmcblk0 bs=1M && sync"

# verbose version of lsblk to list block devices
alias lsblkv='lsblk -o NAME,MAJ:MIN,RM,SIZE,RO,TYPE,MOUNTPOINT,UUID,LABEL,PARTUUID,PARTLABEL,FSTYPE'

# remote access
alias ⚷='ssh-add ~/.ssh/can@W530'
alias gt5="rdesktop -f -g 100% -K -P -z -x l -a 16 -r sound:off -u 'GRAPH-TECH\\can' gt-server5:3389"
alias gt6="rdesktop -f -g 100% -K -P -z -x l -a 16 -r sound:off -u Administrator gt-server6:3389"
alias gtso="rdesktop -f -g 100% -K -P -z -x l -a 16 -r sound:off -u 'GRAPH-TECH\\can' gt-data02:3389"
alias gt-lab="rdesktop -f -g 100% -K -P -z -x l -a 16 -r sound:off 192.168.112.102:3389"
alias github="https://github.com/andreatta"

# blackarch
alias lsblackarch="sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u"
