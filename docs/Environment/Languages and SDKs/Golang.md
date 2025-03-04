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

