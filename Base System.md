## Base system
Debian12 for it be rock solid.


```sh
sudo apt install tmux neovim git wget zsh curl
```

### Enable SSH access
**Enable service**
```
sudo systemctl enable ssh
sudo systemctl start ssh
```

**Enable root login in config**
```
vi /etc/ssh/sshd_config

PasswordAuthentication yes
```

Assumed to run inside a secure environment.
Connect to root.
Drop local ID_ECDSA file into `authorized_keys`

## Base tools
SSH 
UFW
NetworkManager