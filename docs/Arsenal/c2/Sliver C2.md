
**Install pre-reqs**

```sh
sudo apt-get install build-essential mingw-w64 binutils-mingw-w64 g++-mingw-w64
```


**get latest go binary names**

```bash
curl -s https://api.github.com/repos/BishopFox/sliver/releases/latest \
    | jq -r '.assets | .[] | .browser_download_url' \
    | grep -E '(sliver-server_linux|sliver-client_linux)$'
```

**installing binaries (fucking love go)**

```bash

# Set the latest version dynamically
LATEST_VERSION=$(curl -s https://api.github.com/repos/BishopFox/sliver/releases/latest \
    | jq -r '.tag_name')

# Install sliver-server binary
sudo wget -O ~/arsenal/c2/sliver-server \
  https://github.com/BishopFox/sliver/releases/download/${LATEST_VERSION}/sliver-server_linux
  
sudo chmod +x ~/arsenal/c2/sliver-server

# Install sliver-client binary
sudo wget -O ~/arsenal/c2/sliver-client \
  https://github.com/BishopFox/sliver/releases/download/${LATEST_VERSION}/sliver-client_linux
  
sudo chmod +x ~/arsenal/c2/sliver-client
```

## Systemd service

#todo

Dump the following into `/etc/systemd/system/sliver.service`

```bash
sudo vi /etc/systemd/system/sliver.service
```

```toml
[Unit]
Description=Sliver
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=on-failure
RestartSec=3
User=root
ExecStart=/usr/local/bin/sliver-server daemon

[Install]
WantedBy=multi-user.target
```

Set permissions

```bash
chmod 600 /etc/systemd/system/sliver.service
```

Enable and start the service

```bash
sudo systemctl enable sliver.service
sudo systemctl start sliver.service
```

Verify that that `sliver-server` is listening on port `31337`:

```bash
ss -antop | grep 31337
```

## #todo

- Generate an operator config (`sliver-client` will prompt you).
- Harden the setup by running `sliver-server` under a non-root user.

## External Reference
[Dominic Beaker - installing sliver-c2](https://dominicbreuker.com/post/learning_sliver_c2_01_installation/)
