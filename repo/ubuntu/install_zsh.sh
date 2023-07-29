sudo apt install zsh
sudo chsh -s $(which zsh)
sudo apt install git-core curl fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i "/ZSH_THEME=robbyrussell/s/ZSH_THEME/#ZSH_THEME/g" ~/.zshrc
sed -i "/ZSH_THEME=robbyrussell/aZSH_THEME=amuse" ~/.zshrc
sudo chmod o+w /etc/zsh/zprofile
echo 'source /etc/profile' >> /etc/zsh/zprofile
