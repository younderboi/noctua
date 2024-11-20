
### `hashcat`

```bash
sudo apt install hashcat
```

### `nmap`

```sh
sudo apt install nmap
```

## `gobuster`

```bash
sudo apt install gobuster
```


## `responder`

```bash

git clone https://github.com/lgandx/Responder ~/arsenal/local/source/Responder

sudo pip3 install netifaces --break-system-pakacges # live fast, die young

ln -s ~/arsenal/local/source/Responder/Responder.py ~/arsenal/local/builds/responder
```

#todo use a python virtual environment rather than `--break-system-packages`

### `ldapsearch`

```sh
sudo apt install ldap-utils -y
```

## `impacket`

```bash
python3 -m pipx install impacket
```

Installs the `impacket` `.py` files into `~/.local/bin/` which needs to be added to path

#todo don't seem to show up in my autocomplete?
#todo install from source, build into arsenal

## `evil-winrm`

```bash
sudo gem install evil-winrm
```