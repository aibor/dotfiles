export XKB_DEFAULT_LAYOUT=de,us
export XKB_DEFAULT_VARIANT=,altgr-intl
export XKB_DEFAULT_OPTIONS=caps:escape,grp:sclk_toggle,grp_led:scroll,altwin:menu_win
#export MOZ_ENABLE_WAYLAND=1
#export QT_QPA_PLATFORM="wayland;xcb"

if [[ -z "$DISPLAY" ]] && [[ -z "$SSH_CLIENT" ]] && [[ ! -a "/tmp/.X11-unix/X0" ]] && [[ "`whoami`" != "root" ]]; then
  exec ssh-agent startx -- -keeptty &> ~/.local/share/X-session.log
  #exec ssh-agent sway
  logout

fi
