#!/bin/bash

echo -e "
 ██████╗ ███████╗██╗     ██╗  ██╗██╗  ██╗██╗ █████╗ ██████╗ 
██╔═══██╗██╔════╝██║     ██║ ██╔╝██║  ██║██║██╔══██╗██╔══██╗
██║   ██║█████╗  ██║     █████╔╝ ███████║██║███████║██████╔╝
██║   ██║██╔══╝  ██║     ██╔═██╗ ██╔══██║██║██╔══██║██╔══██╗
╚██████╔╝███████╗███████╗██║  ██╗██║  ██║██║██║  ██║██║  ██║
 ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═╝  ╚═╝"

# Create the /usr/local/bin directory in your user's home folder if it doesn't exist
mkdir -p ~/usr/local/bin

sleep 1
# Create a symbolic link to the code executable in the ~/usr/local/bin directory
ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" ~/usr/local/bin/code

sleep 1
# Add the ~/usr/local/bin directory to your PATH variable
echo 'export PATH="$HOME/usr/local/bin:$PATH"' >> ~/..zshrc

sleep 1
# Reload the shell configuration file
source ~/..zshrc

echo "just completed."
