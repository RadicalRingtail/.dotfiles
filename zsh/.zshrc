zle_highlight=('paste:none') # disables paste highlighting

PROMPT="%K{4} %B%(?.√.X)%b %k%F{4}%K{8}%f %~ %k%F{8}%f "

# right prompt is disabled by default cause it gets fucky when resizing the terminal window
# RPROMPT="%F{3}%f%K{3}%B%t %b%k"

alias mp3-dl="yt-dlp -x --audio-format mp3" 