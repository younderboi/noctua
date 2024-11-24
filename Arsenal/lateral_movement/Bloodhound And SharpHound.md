
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


## Sharphound
https://github.com/BloodHoundAD/SharpHound/archive/refs/tags/v2.5.8.tar.gz

```bash
wget https://github.com/BloodHoundAD/SharpHound/releases/download/v2.5.8/SharpHound-v2.5.8.zip -O ~/arsenal/lateral_movement/sharphound.zip

unzip https://github.com/BloodHoundAD/SharpHound/releases/download/v2.5.8/SharpHound-v2.5.8.zip
```

