#!/bin/zsh

#PATH
export GOPATH=~/.local/golang
export PATH=~/.local/bin:$GOPATH/bin:$PATH

#Functions
fpath=(${fpath[@]} $ZSH_CUSTOM/functions)
autoload $(ls $ZSH_CUSTOM/functions)

alias cdrepo="cd ~/Remote/keybase/public/edward_p/arch-repo"
alias cdruntime="cd ${XDG_RUNTIME_DIR}"

alias sshn="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"
alias scpn="scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"
alias vkol="env VK_INSTANCE_LAYERS=VK_LAYER_MESA_overlay"
alias gl_novsync="vblank_mode=0 __GL_SYNC_TO_VBLANK=0"

alias virtls_ezpro="virsh -c qemu+ssh://edward@ezpro/system list --all"
alias virtstart_ezpro="virsh -c qemu+ssh://edward@ezpro/system start"
alias virtshut_ezpro="virsh -c qemu+ssh://edward@ezpro/system shutdown"

alias lsd='exa --icons'

