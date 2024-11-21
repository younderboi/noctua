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


## Bloodhound

https://github.com/SpecterOps/BloodHound

```bash

git clone https://github.com/SpecterOps/BloodHound.git ~/arsenal/sources/BloodHound 

cd ~/arsenal/sources/BloodHound/examples/docker-compose/

docker compose pull
```

#todo note default password

```
iuYzvSBMze1zsbL3uL94OSx_4LOYR2py
```

 Update docker-compose.yml for automation 
 
```bash
sed -i 's/localhost/0.0.0.0/' docker-compose.yml 

sed -i '/volumes:/a\ - ./bloodhound.config.json:/bloodhound.config.json:ro' docker-compose.yml
```

Generate a little startup script
```bash
RUN_SCRIPT=~/arsenal/lateral_movement/enum/bloodhound.sh

touch $RUN_SCRIPT

echo "#\!/bin/zsh" > $RUN_SCRIPT 

echo "docker compose -f ~/arsenal/sources/BloodHound/examples/docker-compose/docker-compose.yaml up" >> $RUN_SCRIPT

```
### `evil-winrm`

https://github.com/Hackplayers/evil-winrm

```zsh
sudo apt gem install ruby ruby-dev build-essential
gem install evil-winrm
```
# TODO
- psexec and wmi exec from impacket???