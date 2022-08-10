plugins=(ms-python.python 
ms-toolsai.jupyter 
ms-vscode.live-server 
opensumi.opensumi-default-themes 
ritwickdey.LiveServer 
rust-lang.rust 
tamasfe.even-better-toml)

for i in "${plugins[@]}" 
do
    codium --install-extension $i
done