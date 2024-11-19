## Tools
- nxc
- responder
- nmap
- gobuster
- sliver
- EvilWinRM
- Impacket
- bloodhound/sharphound
- hashcat (works like shit on a VM)
- searchsploit
- exiftool
- 


### msfvenom

can't seem to find a means of installing msfvenom without metasploit 

```
apt install -y curl gnupg2 postgresql

cd ~/opt

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall

chmod +x msfinstall                                                              

sudo ./msfinstall

# Enable required background services
sudo systemctl start postgresql
sudo systemctl enable postgresql
```


## Seclists

```sh
git clone https://github.com/danielmiessler/SecLists /usr/share/seclists
```

### `hashcat`

```
apt install hashcat
```
### `nmap`

```sh
sudo apt install nmap
```

### `gobuster`

go grab the binary off the git

### `impacket`

install into /opt

### `responder`

install from source into `/opt`

```bash
sudo git clone https://github.com/SpiderLabs/Responder.git /opt/Responder
pip3 install netifaces --break-systempakacges # live fast, die young
ln -s /opt/Responder/Responder.py /usr/local/bin/responder
```


### `ldapsearch`

```sh
sudo apt install ldap-utils -y
```

### `kerbrute`

 install from source, dump into /opt

```bash
wget -P /tmp https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_linux_amd64

sudo mv /tmp/kerbrute_linux_amd64 /usr/bin/kerbrute

sudo chmod +x /usr/bin/kerbrute
```

### `evil-winrm`

https://github.com/Hackplayers/evil-winrm

```sh
apt gem install ruby ruby-dev build-essential
gem install evil-winrm
```

## Bloodhound
Cluster fuck (large application with multiple moving pieces).

## Sliver C2
