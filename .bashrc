#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\w] $ '

alias ls='ls --color=auto'
eval `dircolors ~/Repository/dircolors-solarized/dircolors.ansi-dark`

# Default Editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Command
alias q="exit"
alias cl="clear"
alias la="ls -al"
alias win7="virtualbox --startvm 'Windows 7'"
alias trans="trans -sp"

# Mount Drives
alias id1="udisksctl mount -b /dev/sdb1"
alias ed1="udisksctl unmount -b /dev/sdb1"
alias id2="udisksctl mount -b /dev/sdc1"
alias ed2="udisksctl unmount -b /dev/sdc1"
alias id3="udisksctl mount -b /dev/sdd1"
alias ed3="udisksctl unmount -b /dev/sdd1"
alias idm="udisksctl mount -b /dev/mmcblk0p1"
alias edm="udisksctl unmount -b /dev/mmcblk0p1"

# Tmux
alias shell="tmux new -s shell"
alias tls="tmux list-session"
alias tat="tmux attach"
alias tkl="tmux kill-session"
alias tas="tmux attach -t shell"
alias tad="tmux attach -t development"
alias tks="tmux kill-session -t shell"
alias tkd="tmux kill-session -t development"

# Arduino
export ARDUINO_DIR=/usr/share/arduino
export AVRDUDE=/usr/bin/avrdude
export AVRDUDE_CONF=/etc/avrdude.conf
export ARDMK_DIR=/usr/share/arduino
export AVR_TOOLS_DIR=/usr
export ARDUINO_CORE_PATH=/usr/share/arduino/hardware/archlinux-arduino/avr/cores/arduino
export BOARDS_TXT=/usr/share/arduino/hardware/archlinux-arduino/avr/boards.txt
export ARDUINO_VAR_PATH=/usr/share/arduino/hardware/archlinux-arduino/avr/variants
export BOOTLOADER_PARENT=/usr/share/arduino/hardware/archlinux-arduino/avr/bootloaders
export ARDUINO_PLATFORM_LIB_PATH=/usr/share/arduino/hardware/archlinux-arduino/avr/libraries

# Android
export PATH=$PATH:~/Android/Sdk/tools
export PATH=$PATH:~/Android/Sdk/tools/bin
