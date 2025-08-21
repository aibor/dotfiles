{
    "spacing": 4,
	"height": 30,

    "modules-left": [
		"sway/workspaces",
		"sway/mode"
	],
    "modules-center": [
		"sway/window"
	],

	"clock": {
		"locale": "de_DE.UTF-8",
		"format": "{:L%a, %d.%m - %H:%M}",
        "tooltip-format": "<tt>{calendar}</tt>",
		"calendar": {
			"mode-mon-col": 3,
            "weeks-pos": "left",
			"format": {
                "months":     "<span color='#ffead3'><b>{}</b></span>",
                "days":       "<span color='#ecc6d9'><b>{}</b></span>",
                "weeks":      "<span color='#99ffdd'><b>W{:%V}</b></span>",
                "weekdays":   "<span color='#ffcc66'><b>{}</b></span>",
                "today":      "<span color='#ff6699'><b><u>{}</u></b></span>"
            }
		},
		"actions": {
            "on-click": "mode",
            "on-click-right": "shift_reset",
			"on-scroll-up": "shift_up",
            "on-scroll-down": "shift_down"
		}
	},
	"load": {
	    "interval": 10,
	    "format": "⚙ {load5}",
	},
	"memory": {
        "format": " {}%"
    },
	"mpd": {
        "format": "{stateIcon} {artist} - {title}",
		"format-paused": "",
        "format-stopped": "",
        "format-disconnected": "",
        "unknown-tag": "N/A",
        "interval": 2,
        "state-icons": {
            "paused": "",
            "playing": ""
        },
        "tooltip-format": "{artist} - {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S})",
        "tooltip-format-disconnected": "MPD (disconnected)"
    },
	"privacy": {
		"icon-spacing": 4,
		"icon-size": 18,
		"transition-duration": 250,
		"modules": [
			{
				"type": "screenshare",
				"tooltip": true,
			},
			{
				"type": "audio-out",
				"tooltip": true,
			},
			{
				"type": "audio-in",
				"tooltip": true,
			}
		]
	},
	"pulseaudio": {
        "format": "{icon} {volume}% {format_source}",
        "format-muted": "  {format_source}",
        "format-source": " {volume}%",
        "format-source-muted": "",
        "format-icons": {
            "headphone": "",
            "hands-free": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", "", ""]
        },
        "on-click": "pavucontrol"
    },
	"sway/language": {
		"format": "⌨ {}",
	    "tooltip-format": "{long}",
	    "on-click-middle": "swaymsg input type:keyboard xkb_switch_layout next",
	},
    "sway/mode": {
		"format": "  {}"
    },
	"systemd-failed-units": {
		"hide-on-ok": false,
		"format": "✗ {nr_failed}",
		"format-ok": "✓"
	},
	"temperature": {
        "hwmon-path": "/sys/class/hwmon/hwmon3/temp1_input",
        "critical-threshold": 70,
        "format": "{icon} {temperatureC}°C",
        "format-icons": ["", "", ""]
    },
	"tray": {
        "spacing": 10
    }
}
