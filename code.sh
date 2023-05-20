#!/bin/bash

echo -e "
 ██████╗ ███████╗██╗     ██╗  ██╗██╗  ██╗██╗ █████╗ ██████╗ 
██╔═══██╗██╔════╝██║     ██║ ██╔╝██║  ██║██║██╔══██╗██╔══██╗
██║   ██║█████╗  ██║     █████╔╝ ███████║██║███████║██████╔╝
██║   ██║██╔══╝  ██║     ██╔═██╗ ██╔══██║██║██╔══██║██╔══██╗
╚██████╔╝███████╗███████╗██║  ██╗██║  ██║██║██║  ██║██║  ██║
 ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ \n"

echo "Create the /usr/local/bin directory in your user's home folder if it doesn't exist \n"

mkdir -p ~/usr/local/bin

sleep 1
echo "Create a symbolic link to the code executable in the ~/usr/local/bin directory \n"

ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" ~/usr/local/bin/code

sleep 1
echo "Add the ~/usr/local/bin directory to your PATH variable \n"

echo 'export PATH="$HOME/usr/local/bin:$PATH"' >> ~/.zshrc

sleep 1
echo "Reload the shell configuration file \n";

source ~/.zshrc

echo "just completed. if any error, please reload  the terminal."
