#!/bin/sh

export DEBIAN_FRONTEND=noninteractive

sudo apt update
sudo apt upgrade -y
sudo apt install -y zsh direnv unzip nala screen neofetch open-vm-tools curl mlocate git yadm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

mkdir ~/bin
git clone https://github.com/snowmobile2004/bin.git ~/bin
sudo chsh -s /bin/zsh snow
sudo chsh -s /bin/zsh root

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting

curl -fsSL https://raw.githubusercontent.com/snowmobile2004/scripts/master/zsh-theme/fishy.zsh-theme | sudo tee ~/.oh-my-zsh/themes/fishy.zsh-theme
curl -fsSL https://raw.githubusercontent.com/snowmobile2004/scripts/master/z.sh > ~/bin/z.sh

yadm clone https://github.com/snowmobile2004/dotfiles.git

echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAmBe/xpoI6waS6VtOCUGi6pJsJ3zcljvsMjo+ti8uJraRNarAaJpgCpmfwmSQRb6BIDSxIZxLUFSgQzS5+IMJf1pDIcXwFcg3XXDlnkdL6lBUurwCxx5WQcsOw3CLNjpcq9zzH6NJ7klSdR0KyrWb1Dt3EiPjORbGmkLLZ7Ca3wAh38q5KsUlQ63mRYS75tF+ZjtpO6ZmYJ0+yWNfqJrDn/S7makB0ZaCiOd+Szr037LVIWVX5DayGFqZ/mcaWP1nYKMqv+03YB2e+QguzPjC4C5L3bVpynYKFskb+6H1sKFTNjeagxlZuszJLUZTcGJ3KWVB6pylW4/j4006jZBLpw== rsa-key-20210213' | sudo tee -a ~/.ssh/authorized_keys

git config --global user.name "Josh Green"
git config --global user.email "greenjosh6499@gmail.com"

sudo rm -f install.sh
sudo rm -f kickstart.sh 

echo "Initial Kickstart Completed"

exit
