cd ~/Library/ApplicationSupport/Blender

latest=$(ls | sort -nr | head -1)

cp ~/.dotfiles/blender/startup.blend ~/Library/ApplicationSupport/Blender/$latest/config/startup.blend
cp ~/.dotfiles/blender/userpref.blend ~/Library/ApplicationSupport/Blender/$latest/config/userpref.blend