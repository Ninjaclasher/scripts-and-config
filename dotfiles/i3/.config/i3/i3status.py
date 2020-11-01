from i3pystatus import Status

status = Status(interval=0.7)
status.register(
    'clock',
    format='%b %e %Y %l:%M%p',
)

status.register(
    'battery',
    format='{status} {percentage:.0f}%',
    alert=False,
    alert_percentage=15,
    critical_level_percentage=5,
    status={
        'DIS': '',
        'CHR': '⚡',
        'FULL': '⚡',
    },
)

status.register(
    'pulseaudio',
    format='♫ {volume}%',
)

status.register(
    'cpu_usage',
    format='CPU {usage}%',
)

status.register(
    'mem',
    format='{avail_mem} MB',
)

status.register(
    'xkblayout',
    format='{name}',
    uppercase=True,
    layouts=['us', 'dvp', 'us colemak'],
)

status.register(
    'network',
    interface='enp1s0f1',
    format_up='E: {v4}',
    format_down='',
)

status.register(
    'network',
    interface='wlp2s0',
    format_up='{essid} ({v4})',
    format_down='',
)

#status.register(
#    'now_playing',
#    format='{title}{filename} - {status} {song_elapsed}/{song_length}',
#)


status.run()
