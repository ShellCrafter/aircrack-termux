#!/data/data/com.termux/files/usr/bin/bash
# Aircrack-ng Installer for Termux (no proot)
# Author: You + ChatGPT

set -e

echo "[*] Updating Termux packages..."
pkg update -y && pkg upgrade -y

echo "[*] Installing dependencies..."
pkg install -y git python clang automake autoconf binutils libtool

echo "[*] Cloning Aircrack-ng..."
rm -rf ~/aircrack-ng
git clone https://github.com/aircrack-ng/aircrack-ng.git ~/aircrack-ng
cd ~/aircrack-ng

echo "[*] Preparing build..."
autoreconf -i
./configure --prefix=$PREFIX

echo "[*] Building Aircrack-ng..."
make -j$(nproc)

echo "[*] Copying binaries..."
find . -type f -path "*/.libs/*" -executable -exec cp {} $PREFIX/bin/ \;

echo "[*] Copying libraries..."
find . -type f -path "*/.libs/*.so*" -exec cp {} $PREFIX/lib/ \;

echo "[*] Creating symlinks for shared libraries..."
cd $PREFIX/lib
for lib in libaircrack-ce-wpa libaircrack-ce-wpa-arm-neon libaircrack-osdep; do
    if ls ${lib}-*.so >/dev/null 2>&1; then
        verfile=$(ls ${lib}-*.so | head -n1)
        ln -sf "$verfile" "${lib}.so"
    fi
done

echo "[*] Finalizing..."
chmod +x $PREFIX/bin/*
hash -r

echo "[+] Installation complete!"
echo "[+] You can now run: aircrack-ng, airodump-ng, aireplay-ng, airbase-ng, etc."