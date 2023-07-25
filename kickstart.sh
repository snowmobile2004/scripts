#!/bin/sh

read -r -p "Setup APT Proxy? <y/n> " prompt
if [ "$prompt" = "y" ] || [ "$prompt" = "Y" ] || [ "$prompt" = "yes" ] || [ "$prompt" = "Yes" ]; then
    echo 'Acquire { HTTP::proxy "http://10.0.5.20:3142"; HTTPS::proxy "http://10.0.5.20:3142"; }' | sudo tee /etc/apt/apt.conf.d/proxy
    echo "Added APT proxy to /etc/apt/apt.conf.d"
elif [ "$prompt" = "n" ] || [ "$prompt" = "N" ] || [ "$prompt" = "no" ] || [ "$prompt" = "No" ]; then
    echo "No APT proxy will be set up."
else
    echo "Invalid input. Please enter 'y' or 'n'."
    exit 1
fi

sudo apt update
sudo apt upgrade -y
sudo apt install -y zsh direnv unzip nala

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

mkdir ~/bin
git clone https://github.com/snowmobile2004/bin.git ~/bin
sudo chsh -s /bin/zsh snow
sudo chsh -s /bin/zsh root

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting

curl -fsSL https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zshrc > ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/fishy.zsh-theme | sudo tee ~/.oh-my-zsh/themes/fishy.zsh-theme
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/scripts/master/z.sh > ~/bin/z.sh
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zsh_aliases > ~/.zsh_aliases

echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAmBe/xpoI6waS6VtOCUGi6pJsJ3zcljvsMjo+ti8uJraRNarAaJpgCpmfwmSQRb6BIDSxIZxLUFSgQzS5+IMJf1pDIcXwFcg3XXDlnkdL6lBUurwCxx5WQcsOw3CLNjpcq9zzH6NJ7klSdR0KyrWb1Dt3EiPjORbGmkLLZ7Ca3wAh38q5KsUlQ63mRYS75tF+ZjtpO6ZmYJ0+yWNfqJrDn/S7makB0ZaCiOd+Szr037LVIWVX5DayGFqZ/mcaWP1nYKMqv+03YB2e+QguzPjC4C5L3bVpynYKFskb+6H1sKFTNjeagxlZuszJLUZTcGJ3KWVB6pylW4/j4006jZBLpw== rsa-key-20210213' | sudo tee -a ~/.ssh/authorized_keys

git config --global user.name "Josh Green"
git config --global user.email "greenjosh6499@gmail.com"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/snowmobile2004/scripts/master/install-gh.sh)"

sudo rm -f install.sh
sudo rm -f kickstart.sh 

echo "Initial Kickstart Completed, please login to GitHub"
gh auth login -w

exit