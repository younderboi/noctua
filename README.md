# Noctua

A source-readable, modular red teaming stack built on Debian 12 and Ansible.  
*(Eventually migrating to Void Linux...)*

Noctua is designed as a **rock-solid base** for surgical offensive operations.

Tools are built from source wherever possible, and provisioning is done cleanly via Ansible.

Ongoing work in progress — but already operational.

---

## 🎯 Goals

- Idempotent provisioning via Ansible
- Minimal base install — everything is opt-in
- Source-first tooling (wherever possible)
- Emacs as an (optional) full-spectrum operator cockpit
- Easily portable between cloud, VPS, and field laptops

---

## 🧱 Deployment Models

Noctua can be deployed in an infite set of ways, but here's some examples:

- **Local monolith** — like a GUI Kali Linux

- **Headless node**
  - fully remote
  - no GUI tooling
  - RDP/VNC

- **Thin client/server**
  - GUI tooling on a local thin client (RPI?)
    - Browser
    - Secretsmanager
    - Document reader
    - ..
  - Heavy tooling on remote system
  
- **Hybrid (personal fav)**  
  - Tooling lives **locally**  
  - **Network-heavy tasks** run on a remote jumpbox  
  - Remote system acts as **opsec-forward pivot**  
  - Tailscale mesh for comms  
  - NFS for shared access and loot sync

- **Archival/strongbox**
  - Loot
  - Engagement Archive
  - Source/artifact storage

- **Recon node**
  - Periodically scan and store stuff

- **C2 server node**

---

## 🔐 OPSEC & Security Philosophy

- **Bloat = attack surface** — nothing is installed without intent
- All tooling is opt-in and source-visible
- Most tools are built from source to enable auditing
- That said — current priority is OSCP completion, so OPSEC is *not* locked down yet

---

## 🛠️ Planned Features

- LLM + embedding for offline intel processing
- GitLab + artifact repository
- Automated backup/archival
- ELK stack / lightweight SIEM
- TAK server (Tactical Awareness Kit)
- Android tooling (Fdroid repo, ADB workflows, side-loading stack)

---

**Very much WIP.**
If you like this, feel free to reach out.

