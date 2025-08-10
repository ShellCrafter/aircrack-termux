# 🛰️ Aircrack-ng Installer for Termux

**Author:** [ShellCrafter](https://github.com/ShellCrafter)  
**Repo:** [aircrack-termux](https://github.com/ShellCrafter/aircrack-termux)  

This script allows you to **easily install Aircrack-ng and related tools** in Termux **without Proot**.  
It compiles from source, copies binaries, installs libraries, and fixes missing `.so` errors automatically.  

---

## 🚀 Features
- ✅ One-command installation  
- ✅ Works fully inside Termux (no root, no proot)  
- ✅ Installs all Aircrack-ng tools:  
  `aircrack-ng`, `airodump-ng`, `aireplay-ng`, `airbase-ng`, etc.  
- ✅ Auto-fixes missing library errors (`.so` files)  
- ✅ Tested on latest Termux  

---

## 📦 Installation

```bash
pkg update -y && pkg upgrade -y
pkg install -y git
git clone https://github.com/ShellCrafter/aircrack-termux.git
cd aircrack-termux
bash install.sh


---

🛠 Usage

Once installed, you can run any of the Aircrack-ng tools from anywhere in Termux:

aircrack-ng --help
airodump-ng wlan0
aireplay-ng --help
airbase-ng --help


---

📜 Script Overview

The install.sh script does the following:

1. Updates Termux packages


2. Installs dependencies (clang, automake, autoconf, binutils, libtool, etc.)


3. Clones Aircrack-ng from GitHub


4. Builds it from source


5. Copies all binaries to $PREFIX/bin


6. Copies all .so libraries to $PREFIX/lib


7. Creates symlinks for libraries to fix CANNOT LINK EXECUTABLE errors


8. Refreshes shell command cache




---

📷 Screenshot

(Optional — you can add a screenshot of it running here)
Example:

Aireplay-ng 1.7  - (C) 2006-2022 Thomas d'Otreppe
https://www.aircrack-ng.org


---

⚠️ Disclaimer

This tool is for educational and authorized testing purposes only.
Do not use it on networks without explicit permission.
The author is not responsible for any misuse.


---

💬 Support

If you encounter issues, open an Issue or contact me.


---

Enjoy cracking responsibly! 😎

This will fix your formatting so normal paragraphs won’t be shown as code after commands.  

If you want, I can also make it **look more colorful and stylish** with GitHub badges, icons, and section separators so it really stands out.

