
### Arsenal

The **Noctua Arsenal** is divided into categories for clarity and ease of use. Each category separates tools by **execution context** (local vs. deployed) and **management context** (source code vs. built binaries).

```txt
~/noctua/arsenal/
  ├── local/          # Tools executed locally
  │    ├── source/    # Raw source code for local tools
  │    └── builds/    # Compiled or installed local binaries/scripts
  ├── deployed/       # Tools executed on the target
  │    ├── source/    # Raw source code for deployed tools
  │    └── builds/    # Packaged scripts/binaries for deployment
  └── custom/         # Custom scripts or utilities

```

- **Local Tools**: Tools executed from your machine, such as CrackMapExec, Impacket, or BloodHound.
    
    - `local/source/`: Contains raw repositories cloned from GitHub or other sources.
    - `local/builds/`: Contains compiled binaries or virtual environments ready for execution.
- **Deployed Tools**: Tools deployed and executed on the target, such as WinPEAS, LinPEAS, and Mimikatz.
    
    - `deployed/source/`: Contains raw repositories for tools customized or prepared for deployment.
    - `deployed/builds/`: Contains packaged scripts or binaries ready for transfer to the target system.
- **Custom Scripts**: Custom-built utilities or frequently used automation scripts that enhance workflows.
    
#### **Workflow**

1. Clone raw source code into the appropriate `source/` directory.
2. Build or compile the tool into the `builds/` directory.
3. Deploy or use tools as required, keeping source and binaries neatly separated.

#### **Benefits**

- Clear separation of **local** and **deployed** tools.
- Organized structure for maintaining **source** and **built binaries**.
- Scalable for adding new tools and workflows.
- Easy updates by isolating source repositories from builds.


```bash
# Create the main arsenal directory
mkdir -p ~/arsenal

# Local tools
mkdir -p ~/arsenal/local/source
mkdir -p ~/arsenal/local/builds

# Remote tools
mkdir -p ~/arsenal/remote/source
mkdir -p ~/arsenal/remote/builds

# Payloads
mkdir -p ~/arsenal/payloads/web
mkdir -p ~/arsenal/payloads/smb
mkdir -p ~/arsenal/payloads/dns
mkdir -p ~/arsenal/payloads/others

# Custom tools
mkdir -p ~/arsenal/custom

# Resources
mkdir -p ~/resources/wordlists/seclists
mkdir -p ~/resources/wordlists/custom
mkdir -p ~/resources/dictionaries
```

