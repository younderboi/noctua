## `netexec`

https://www.netexec.wiki/getting-started/installation/installation-on-unix

```bash
pipx ensurepath

pipx install git+https://github.com/Pennyw0rth/NetExec
```

#todo: install from source
## `impacket`

```bash
python3 -m pipx install impacket
```

Installs the `impacket` `.py` files into `~/.local/bin/` which needs to be added to path

#todo don't seem to show up in my autocomplete?
#todo install from source, build into arsenal


## `responder`

```bash

git clone https://github.com/lgandx/Responder ~/arsenal/sources/Responder

sudo pip3 install netifaces --break-system-pakacges # live fast, die young

ln -s ~/arsenal/sources/Responder/Responder.py ~/arsenal/lateral_movement/enumeration/responder
```

#todo use a python virtual environment rather than `--break-system-packages`

### `kerbrute`

 install from source, dump into /opt

```bash
wget -P ~/arsenal/sources/kerbrute https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_linux_amd64

ln -s ~/arsenal/sources/kerbrute/kerbrute_linux_amd64 ~/arsenal/lateral_movement/enumeration/kerbrute

chmod +x /usr/bin/kerbrute
```


### Creating a systemd service

```bash
sudo vi /etc/systemd/system/bloodhound.service
```

```ini
[Unit]
Description=BloodHound Service
After=network.target docker.service
Requires=docker.service

[Service]
ExecStart=/usr/bin/docker compose -f /home/eknovitz/arsenal/sources/BloodHound/examples/docker-compose/docker-compose.yml up -d
ExecStop=/usr/bin/docker compose -f /home/eknovitz/arsenal/sources/BloodHound/examples/docker-compose/docker-compose.yml down
Restart=always
User=eknovitz
Group=eknovitz
WorkingDirectory=/home/eknovitz/arsenal/sources/BloodHound/examples/docker-compose

[Install]
WantedBy=multi-user.target
```

#todo: consider adding a service user?
#todo: unhardcode username
### `evil-winrm`

https://github.com/Hackplayers/evil-winrm

```zsh
sudo apt gem install ruby ruby-dev build-essential -y
gem install evil-winrm
```
# TODO
- psexec and wmi exec from impacket???