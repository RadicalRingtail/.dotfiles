setopt CORRECT_ALL AUTO_CD HIST_IGNORE_DUPS HIST_REDUCE_BLANKS

zle_highlight=('paste:none') # disables paste highlighting

PROMPT="%K{4} %B%(?.√.X)%b %k%F{4}%K{8}%f %~ %k%F{8}%f "

# right prompt is disabled by default cause it gets fucky when resizing the terminal window
#RPROMPT="%F{3}%f%K{3}%B%t %b%k"

alias mp3-dl="yt-dlp -x --audio-format mp3" # for easy audio downloading
alias youtube-dl="yt-dlp" # i still instinctively type this sometimes so im adding a failsafe for my monkey brain
alias yt-dlp-short="yt-dlp -o ~/Movies/youtube-dl/%(webpage_url)s.%(ext)s" # if file name is too long