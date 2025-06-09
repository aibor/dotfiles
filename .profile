export XKB_DEFAULT_LAYOUT=us,de
export XKB_DEFAULT_VARIANT=altgr-intl,
export XKB_DEFAULT_OPTIONS=caps:escape,grp:sclk_toggle,grp_led:scroll,altwin:menu_win

if command -v sway && [[ -z "$WAYLAND_DISPLAY" ]] && [[ -n "$XDG_VTNR" ]] && [[ "$XDG_VTNR" -eq 1 ]]; then
  export QT_QPA_PLATFORM="wayland;xcb"
  export QT_QPA_PLATFORMTHEME=qt5ct:qt5ct
  ulimit -S -n 262144
  exec ssh-agent sway
  logout
elif command -v startx && [[ -z "$DISPLAY" ]] && [[ -z "$SSH_CLIENT" ]] && [[ ! -e "/tmp/.X11-unix/X0" ]] && [[ "$(whoami)" != "root" ]]; then
  ulimit -S -n 65536
  exec ssh-agent startx -- -keeptty &>~/.local/share/X-session.log
  logout
fi
