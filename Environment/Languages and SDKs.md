
## Golang 
i love this language

note that the golang in the debian mirrors is some ancient version, we wanna go with version `V1.23` as this is the cool new one.


```bash
export GO_VERSION=1.23.3
export GO_TAR=go${GO_VERSION}.linux-amd64.tar.gz

wget -P /tmp https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz

# TODO: Verify signature
# a0afb9744c00648bafb1b90b4aba5bdb86f424f02f9275399ce0c20b93a2c3a8

# Unpack tar
sudo tar -C /usr/local -xzf /tmp/${GO_TAR}

# Verify setup
go version
```


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


## Docker


**Install Pre-Reqs**

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
```


**Install repo**

```bash
# Add GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add docker repo
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install docker
sudo apt update
sudo apt install -y docker-ce docker-ce-cli cotainerd.io docker-compose-plugin

```


**Start and enable service**

```bash
sudo systemctl start docker
sudo systemctl enable docker
docker --version
```

**Setup user**

```bash
sudo usermod -aG docker $USER
newgrp docker
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

