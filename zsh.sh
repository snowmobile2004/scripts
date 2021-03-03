sudo apt install -y zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh > install.sh
chmod +x install.sh
bash ./install.sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting
curl https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zshrc > ~/.zshrc
curl https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/fishy.zsh-theme | tee ~/.oh-my-zsh/themes/fishy.zsh-theme
curl https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zsh_aliases > ~/.zsh_aliases
curl https://raw.githubusercontent.com/snowmobile2004/dotfiles/master/.zshrc > ~/.zshrc
