setopt CORRECT_ALL AUTO_CD HIST_IGNORE_DUPS HIST_REDUCE_BLANKS

zle_highlight=('paste:none') # disables paste highlighting

PROMPT="%K{4} %B%(?.√.X)%b %k%F{4}%K{8}%f %~ %k%F{8}%f "

# right prompt is disabled by default cause it gets fucky when resizing the terminal window
#RPROMPT="%F{3}%f%K{3}%B%t %b%k"

alias mp3-dl="yt-dlp -x --audio-format mp3" # for easy audio downloading
alias youtube-dl="yt-dlp" # i still instinctively type this sometimes so im adding a failsafe for my monkey brain
alias gallery-dl="gallery-dl --cookies-from-browser firefox"

# Created by `pipx` on 2024-09-17 21:04:07
export PATH="$PATH:/Users/ringtail/.local/bin"
