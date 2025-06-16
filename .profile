ulimit -S -n 262144

if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  export XKB_DEFAULT_LAYOUT=us,de
  export XKB_DEFAULT_VARIANT=altgr-intl,
  export XKB_DEFAULT_OPTIONS=caps:escape,grp:sclk_toggle,grp_led:scroll,altwin:menu_win
  export QT_QPA_PLATFORM="wayland;xcb"
  export QT_QPA_PLATFORMTHEME=qt5ct

  exec ssh-agent sway
  logout
fi
