plugins=(ms-python.python 
ms-python.python
ms-python.vscode-pylance
ms-vscode.live-server
opensumi.opensumi-default-themes
geequlim.godot-tools)

for i in "${plugins[@]}" 
do
    code --install-extension $i
done