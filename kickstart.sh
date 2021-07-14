#!/usr/bin/env bash
sudo apt update
sudo apt upgrade -y && sudo apt install -y zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sudo chmod +x install.sh
ZSH="/home/snow/.oh-my-zsh" sh install.sh
bash install.sh --unattended
chsh -s /bin/zsh snow
sudo chsh -s /bin/zsh root
git clone https://github.com/snowmobile2004/bin.git | ~/bin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zshrc > ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/fishy.zsh-theme | tee ~/.oh-my-zsh/themes/fishy.zsh-theme
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zsh_aliases > ~/.zsh_aliases
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/scripts/master/z.sh > ~/z.sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/snow/zsh-syntax-highlighting
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zshrc > ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/fishy.zsh-theme | tee /home/snow/.oh-my-zsh/themes/fishy.zsh-theme
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zsh_aliases > ~/.zsh_aliases
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/scripts/master/z.sh > ~/z.sh
sudo echo 'Acquire { HTTP::proxy "http://10.0.5.20:3142"; HTTPS::proxy "http://10.0.5.20:3142"; }' | tee /etc/apt/apt.conf.d/proxy
sudo echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAmBe/xpoI6waS6VtOCUGi6pJsJ3zcljvsMjo+ti8uJraRNarAaJpgCpmfwmSQRb6BIDSxIZxLUFSgQzS5+IMJf1pDIcXwFcg3XXDlnkdL6lBUurwCxx5WQcsOw3CLNjpcq9zzH6NJ7klSdR0KyrWb1Dt3EiPjORbGmkLLZ7Ca3wAh38q5KsUlQ63mRYS75tF+ZjtpO6ZmYJ0+yWNfqJrDn/S7makB0ZaCiOd+Szr037LVIWVX5DayGFqZ/mcaWP1nYKMqv+03YB2e+QguzPjC4C5L3bVpynYKFskb+6H1sKFTNjeagxlZuszJLUZTcGJ3KWVB6pylW4/j4006jZBLpw== rsa-key-20210213' \ tee .ssh/"authorized keys"
echo Initial Kickstart Completed
exit