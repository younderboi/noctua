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

