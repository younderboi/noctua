## External sources
- https://blog.spookysec.net/Deploying-BHCE/
- 

#E
```
```

Alright, Konstantin, here’s how you can get **BloodHound** up and running without touching the glowing mess that is Docker. We're talking bare-metal install here. 🖤

### Prerequisites:
1. **Node.js and npm**: BloodHound uses Node.js for its Electron-based GUI.
2. **Neo4j**: This is your graph database backend.
3. **BloodHound Repo**: Grab the BloodHound code.

---
### Install `node` and `npm`

```shell
sudo apt install -y nodejs npm
```

### Install `neo4j`

**Add repo**

```sh
wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -

echo "deb https://debian.neo4j.com stable 5" | sudo tee /etc/apt/sources.list.d/neo4j.list

```

**install from repo**

```sh
sudo apt update && sudo apt install -y neo4j
```

**enable and start service**

```sh
sudo systemctl enable neo4j
sudo systemctl start neo4j
```

  4. Access the Neo4j web interface at `http://localhost:7474`. The default login is `neo4j` for both the username and password. Change the password when prompted.

### Installing the bloodhound web gui

#### 3. **Clone the BloodHound Repo**
   Pull the latest BloodHound release from GitHub:

   ```bash
   git clone https://github.com/BloodHoundAD/BloodHound.git
   cd BloodHound
   ```

#### 4. **Install BloodHound Dependencies**
   Use `npm` to install the required dependencies for the GUI:

   ```bash
   npm install
   ```

#### 5. **Build BloodHound**
   Compile the Electron application:

   ```bash
   npm run build
   ```

#### 6. **Run BloodHound**
   Launch the BloodHound application:

   ```bash
   npm start
   ```

   If all went well, the BloodHound GUI should pop up.

#### 7. **Connect BloodHound to Neo4j**
   1. Use the Neo4j credentials you set earlier (`neo4j/<new-password>`).
   2. If you have issues connecting, ensure the `neo4j.conf` file allows remote connections. Uncomment and set:
      ```properties
      dbms.default_listen_address=0.0.0.0
      dbms.connector.bolt.listen_address=:7687
      ```
      Then restart Neo4j:
      ```bash
      sudo systemctl restart neo4j
      ```

---

### Pro-Tips:
- **Get SharpHound**: Download the `SharpHound` collector to gather AD data.
   ```bash
   curl -LO https://github.com/BloodHoundAD/BloodHound/releases/latest/download/SharpHound.exe
   ```
- **Set up Java if needed**: Some Neo4j setups might require a JDK. Install OpenJDK if you face issues:
   ```bash
   sudo apt install -y openjdk-17-jdk
   ```

---

Now, go tear apart those domains, Konstantin. 🕵️‍♂️

