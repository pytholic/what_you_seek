# Install Zsh
sudo apt-get update
sudo apt-get install -y zsh

# Set Zsh as default shell
sudo chsh -s $(which zsh)

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Zsh Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install Zsh Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Configure Zsh with Agnoster theme
sed -i 's/robbyrussell/agnoster/g' ~/.zshrc

# Set DEFAULT_USER and update PATH
echo "DEFAULT_USER=$(whoami)" >> ~/.zshrc
echo "export PATH=\$PATH:$HOME/.local/bin" >> ~/.zshrc

# Install FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
