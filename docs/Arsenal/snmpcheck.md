[nothink! website](http://www.nothink.org/codes/snmpcheck/index.php)
[github repo](https://gitlab.com/kalilinux/packages/snmpcheck)

```sh
mkdir -p ~/arsenal/sources/snmpcheck

wget -O ~/arsenal/sources/snmpcheck/snmpcheck.rb https://www.nothink.org/codes/snmpcheck/snmpcheck-1.9.rb

chmod +x ~/arsenal/sources/snmpcheck/snmpcheck.rb

# WARNING: global install
sudo gem install snmp

sudo ln -s ~/arsenal/sources/snmpcheck/snmpcheck.rb /usr/local/bin/snmpcheck
```
