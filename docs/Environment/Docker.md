
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

