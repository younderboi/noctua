

## Python

I hate this fucking language

```bash
sudo apt install -y python3 python3-venv python3-pip pipx

sudo ln -s /usr/bin/python3 /usr/bin/python
```

## Ruby and Gem


```bash
sudo apt install ruby-full
```


## Dotnet 5.0

**Pre-reqs**

```bash
wget http://ftp.de.debian.org/debian/pool/main/o/openssl1.1/libssl1.1_1.1.1n-1_amd64.deb -O /tmp/libssl1.1

sudo dpkg -i /tmp/libssl1.1

```

**Install**

```bash
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb

sudo dpkg -i /tmp/packages-microsoft-prod.deb

sudo apt update

sudo apt install -y dotnet-sdk-5.0
```


```bash

```


```
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb

sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
```

**Disabling telemtry**

```bash

```

