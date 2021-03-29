#!/usr/bin/env bash
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o install.sh
chmod +x install.sh
bash ./install.sh --unattended
chsh -s /bin/zsh snow
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting
curl https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zshrc > ~/.zshrc
curl https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/fishy.zsh-theme | tee ~/.oh-my-zsh/themes/fishy.zsh-theme
curl https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zsh_aliases > ~/.zsh_aliases
mkdir ~/bin
curl https://raw.githubusercontent.com/snowmobile2004/scripts/master/z.sh > ~/bin/z.sh