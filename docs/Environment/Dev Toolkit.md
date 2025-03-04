
_A concise playbook to bootstrap your essential dev environment._

---

## Directory Scaffolding

Set up required directories for configuration:

```bash
mkdir -p ~/.config
```

---

## Misc (search) tools

```bash
sudo apt install jq ripgrep fzf locate
```

---

## **`direnv`**  

Shell extension to manage environment variables effortlessly.

```sh
sudo apt install direnv
```

_Note: The Zsh configuration below already includes the required shell hook._

---

## **`neovim`**  

Because real hackers use Vim... but better. The default Neovim version in Debian 12 is ancient, so we install the latest from source.  

### Install Neovim

```sh
# Install build tools
sudo apt install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl git

# Clone Neovim source
sudo git clone https://github.com/neovim/neovim.git /opt/neovim

# Build and install
cd /opt/neovim
sudo git fetch --all
sudo git checkout stable
sudo make CMAKE_BUILD_TYPE=Release
sudo make install

# Verify installation
nvim --version
```

### **Install Configuration**

```sh
git clone https://github.com/younderboi/nvim.git ~/.config/nvim
```

_TODO: Document LazyVim system dependencies._

---

## **`tmux`** 

Terminal multiplexer for managing multiple sessions.

```sh
sudo apt install tmux

# Install configuration
git clone https://github.com/younderboi/tmux.git ~/.config/tmux

# Symlink the config (hacky)
# ln -s ~/.config/tmux/
```


---

## **`zsh`**  

A better shell for a better you.  

### **Install Zsh**

```sh
sudo apt install zsh

# Clone configuration
git clone https://github.com/younderboi/zsh.git ~/.config/zsh

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.config/zsh/plugins/zsh-autosuggestions
git clone https://github.com/marlonrichert/zsh-autocomplete.git ~/.config/zsh/plugins/zsh-autocomplete

# Symlink configuration
ln -s ~/.config/zsh/zshrc ~/.zshrc

# Make Zsh the default shell
chsh -s $(which zsh)
```

---

## **`shellgpt`**  

https://github.com/TheR1D/shell_gpt

```bash
sudo pip3 install shell-gpt --break-system-packages

# sgpt --install-integration
# todo: add API key to ~/.config/shell_gpt/.sgptrc
```

#todo: figure out how to install this without the `--break-system-packages`


---
