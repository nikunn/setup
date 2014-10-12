# PATH
export SLOTS=/sys/devices/bone_capemgr.9/slots
export PINS=/sys/kernel/debug/pinctrl/44e10800.pinmux/pins

# ALIAS
alias ll='ls -l'

function __premake(){
    premake4 --file=premake.lua clean;
      premake4 --file=premake.lua "$@" gmake;
}
alias premake="__premake"
