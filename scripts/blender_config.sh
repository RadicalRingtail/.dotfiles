cd ~/Library/Application\ Support/Blender

latest=$(ls | sort -nr | head -1)

cp ~/.dotfiles/blender/startup.blend ~/Library/Application\ Support/Blender/$latest/config/startup.blend
cp ~/.dotfiles/blender/userpref.blend ~/Library/Application\ Support/Blender/$latest/config/userpref.blend