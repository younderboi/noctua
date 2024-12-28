**FTP**

```
nmap -p 21 --script=ftp-anon,ftp-syst -sV $RHOST

# filezilla scan
sudo nmap -p 14147 --script=banner $RHOST
```

**SMB**
#todo

```
nmap --script="smb-vuln*" -p 445 $RHOST
```

