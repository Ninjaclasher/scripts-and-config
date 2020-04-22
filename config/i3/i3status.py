from i3pystatus import Status

status = Status()
status.register("clock", 
    format="%b %e %Y %l:%M%p",)

status.register("battery",
    format="{status} {percentage:.0f}%",
    alert=True,
    alert_percentage=15,
    critical_level_percentage=5,
    status={
    "DIS":"",
    "CHR":"⚡",
    "FULL":"⚡",},)

status.register("pulseaudio",
    format="♫ {volume}%",
    )

status.register("cpu_usage",
    format="CPU {usage}%")

status.register("xkblayout",
    format="{symbol} {variant}",
    uppercase=True,
    layouts=["us", "dvp", "us colemak"])


status.register("network",
    interface="enp1s0f1",
    format_up="E: {v4}",
    format_down=""
    )

status.register("network",
    interface="wlp2s0",
    format_up="{essid} ({v4})",
    format_down=""
    )

status.register("now_playing",
    format="{title}{filename} - {status} {song_elapsed}/{song_length}",)

status.run()
