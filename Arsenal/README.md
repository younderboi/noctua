

## Layout

```txt
arsenal/
├── sources/               # Centralized raw source directories
│   ├── responder/
│   ├── linpeas/
│   ├── winpeas/
│   ├── impacket/
│   └── <tool-name>/
├── recon/                 # nmap and gobuster like 
├── credentials/           # cracking and so on
│   ├── dumping/
│   ├── cracking/
│   ├── storage/
│   └── manipulation/
├── initial-access-foothold/
│   ├── exploits/
│   ├── payloads/
│   └── foothold/
├── privesc/
│   ├── enumeration/
│   │   └── linpeas          # Symlink to LinPEAS binary
│   └── exploits/
├── lateral-movement/        # responder, bloodhound, impacket
└── actions-on-objective/    # todo
    ├── persistence/
    ├── data-collection/
    ├── exfiltration/
    └── cleanup/

```
## Generating the folder layout

```bash
mkdir -p arsenal/sources

mkdir -p ~/arsenal/recon

mkdir -p arsenal/credentials/dumping
mkdir -p arsenal/credentials/cracking
mkdir -p arsenal/credentials/storage
mkdir -p arsenal/credentials/manipulation

mkdir -p arsenal/initial_access/exploits
mkdir -p arsenal/initial_access/payloads
mkdir -p arsenal/initial_access/foothold

mkdir -p arsenal/privesc/enum
mkdir -p arsenal/privesc/exploits

mkdir -p arsenal/lateral_movement
```