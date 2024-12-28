Here's a **compact write-up** on using **Pex** to bundle Python tools and dependencies into a portable, self-contained `.pex` file for use in restricted environments. 🚀

---

# **Portable Python Bundles with Pex**

**Pex** (Python EXecutable) is a tool that creates a single **portable Python executable** containing your script and all dependencies. It runs on systems with Python installed, eliminating the need for `pip` or virtual environments.

---

## **Why Use Pex?**

1. **Self-Contained**: Bundles all dependencies into one file.
2. **Portable**: Move it anywhere—works as long as the system has a compatible Python version.
3. **Lightweight**: Does not include the Python interpreter, keeping the file size small.
4. **Perfect for Restricted Environments**: No `pip` or venv needed.

---

## **Prerequisites**

- Python 3.x on your attacker machine.
- Pex installed:
    
    ```bash
    pip install pex
    ```
    

---

## **Step-by-Step Guide**

### **1. Prepare a `requirements.txt`**

Create a file that lists all dependencies. Example for Impacket:

```text
impacket
pycryptodome
ldap3
```

---

### **2. Build the Pex File**

Run the following command to bundle everything:

```bash
pex -r requirements.txt -o impacket_bundle.pex --python=python3
```

**Flags**:

- `-r requirements.txt`: Include dependencies.
- `-o impacket_bundle.pex`: Output file name.
- `--python=python3`: Ensures compatibility with Python 3.x.

---

### **3. Transfer the Bundle**

Move the `.pex` file to your target system (e.g., pivot host):

```bash
scp impacket_bundle.pex user@pivot:/path/to/destination
```

---

### **4. Run the Pex File**

On the target system, ensure executable permissions:

```bash
chmod +x impacket_bundle.pex
```

Run the bundled tool directly:

```bash
./impacket_bundle.pex -m impacket.examples.secretsdump -h
```

- **`-m`**: Runs a module inside the Pex file (like `secretsdump.py`).

---

## **Key Benefits**

- **No Installation Needed**: No `pip`, no venv, no dependency hell.
- **One File, Portable**: Easy to transfer and execute.
- **Works Anywhere**: As long as the target has a compatible Python interpreter.

---

## **Limitations**

- Requires **Python** on the target system.
- Won’t work if the Python version doesn’t match (e.g., Python 3.9 bundle won’t run on Python 3.8).

---

## **Alternatives**

- **PyInstaller**: If Python isn’t available on the target, bundle everything into a native executable.
- **Shiv**: Lightweight like Pex but with fewer options for complex use cases.

---

### **Example Workflow Recap**

1. **Build** the Pex file:
    
    ```bash
    pex -r requirements.txt -o impacket_bundle.pex --python=python3
    ```
    
2. **Transfer** to the target system.
3. **Run** directly:
    
    ```bash
    ./impacket_bundle.pex -m impacket.examples.ntlmrelayx
    ```
    

---

## **When to Use Pex**

- When you need a portable Python tool **with all dependencies** bundled.
- When the target system has Python but lacks `pip` or internet access.

Let me know if you need more details or tweaks for your setup! 🚀