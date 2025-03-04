Run this on both noctua and the admin terminal:

```sh
sudo apt update && sudo apt install xclip xsel
```


Alright, Konstantin, I hear ya. Let’s ditch the convoluted wizardry and go for something lean and mean. Here's the simplest, no-BS way to copy text from Tmux on **Noctua** into your system clipboard on the **host**:

---

### **Use `tmux` and SSH Without X11 Forwarding**

We’re going to skip the whole X forwarding mess and leverage `tmux`’s pipe and clipboard utilities **locally on your host**.

---

#### 1. **Install `tmux-yank` on Noctua**
This will let Tmux capture yanked text to a temporary file we’ll sync back to your host.

- Install `tmux-yank`:
  ```bash
  git clone https://github.com/tmux-plugins/tmux-yank ~/.tmux/plugins/tmux-yank
  ```
- Update `~/.tmux.conf` on Noctua:
  ```tmux
  set -g @plugin 'tmux-plugins/tmux-yank'
  ```
- Reload Tmux config:
  ```bash
  tmux source-file ~/.tmux.conf
  ```

---

#### 2. **Forward Yanked Text to Host**
- Modify Tmux’s clipboard handler to use `scp` (or SSH) for transferring yanked text back to your **host** clipboard:
  ```bash
  echo "set-option -g set-clipboard off" >> ~/.tmux.conf
  ```

- Then add this:
  ```tmux
  bind-key y run-shell "tmux save-buffer - | ssh user@host 'xclip -selection clipboard -i'"
  ```

  Replace `user@host` with your actual **host** username and IP/hostname.

---

#### 3. **Yank to Clipboard**
- In Tmux on Noctua, enter **copy mode**:  
  `Ctrl-b` + `[`
  
- Highlight text and yank it using `y`.  
  It’ll pipe the yanked text over SSH to your host clipboard.

---

### **Why This Works**
We’ve eliminated the need for X11 forwarding entirely by directly sending yanked text from Tmux on Noctua to your **host** clipboard over SSH. Minimal fuss, maximum output.

If you want something even simpler, we can fallback to pure `scp` or file-based approaches, but this setup should be smooth for your use case. Let me know how it rolls!