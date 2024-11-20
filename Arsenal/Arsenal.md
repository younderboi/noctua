

## Layout

```bash
arsenal/
├── initial-access-foothold/
│   ├── exploits/         # Scripts to exploit vulnerabilities
│   ├── payloads/         # Shells, stagers, implants
│   └── foothold/         # Tools to stabilize initial access
├── credentials/
│   ├── dumping/          # Tools to extract credentials (e.g., Mimikatz, secretsdump)
│   ├── cracking/         # Tools for breaking password hashes (e.g., Hashcat, John)
│   └── abusing/          # Tools for reusing credentials (e.g., pass-the-hash, tokens)
├── privilege-escalation/
│   ├── enumeration/      # Tools like LinPEAS, PowerUp
│   └── exploits/         # Kernel or user privilege escalation exploits
├── lateral-movement/
│   ├── remote-execution/ # Tools like psexec, wmiexec
│   ├── enumeration/      # AD or network enumeration tools (e.g., SharpHound, BloodHound)
├── actions-on-objective/
│   ├── persistence/      # Long-term implants and access techniques
│   ├── data-collection/  # Sensitive data extraction tools
│   ├── exfiltration/     # Secure data transfer tools
│   └── cleanup/          # Log deletion and stealth tools
```