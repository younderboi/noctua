
## System Requirements

- **RAM**: 4096 MB  
- **CPUs**: 4  
- **Storage**: 90 GB  

## Setup

### Initial System Update
  
```sh
sudo apt update && sudo apt upgrade -y
```

```sh
sudo apt install wget curl rlwrap tree git -y
```

### Setup `sudo` user

```sh

apt install sudo

# open /etc/group with preferred editor
sudo vi /etc/group

# add designated user to sudo group
sudo:x:27:<username>

# verify user is part of sudo group
groups <username>
```

---

### Enable SSH Access

```sh
sudo systemctl enable ssh
sudo systemctl start ssh
```

Drop you terminal machines `id_ecdsa` public into the `authorized_keys` file for secure auth.

```
~/.ssh/authorized_keys
```

   #TODO: SSH hardening (e.g., disable password authentication, enforce stronger ciphers, disable root login, change default port, fail2ban).

---
## Networking

- **TCPDump**: For network traffic analysis.
- **VPN Support**: OpenVPN and WireGuard for secure connections.
- **Firewall**: Use UFW for basic firewall configuration.

Install essential networking and security tools:

```sh
# Install NetworkManager
sudo apt install -y network-manager
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

# VPN Support
sudo apt install -y openvpn wireguard

# Firewall
sudo apt install -y ufw

# Basic networking tools
sudo apt install -y socat netcawt-openbsd
```

### Firewall Configuration

Enable the firewall and allow essential services:

```sh
# Allow SSH
sudo ufw allow ssh

# Enable UFW
sudo ufw enable

# Check status
sudo ufw status verbose
```

**Note:** it's important to enable incoming ssh prior to enabling ufw, as otherwise you may lock yourself out of the system <3

#TODO: Add specific rules for engagement-specific networking needs and harden the UFW configuration further.
