On the remote host:

```sh
xpra start :100 --start=firefox-esr --opengl=no
```

On the local admin machine:

```sh
xpra attach ssh:boxknox:100
```
