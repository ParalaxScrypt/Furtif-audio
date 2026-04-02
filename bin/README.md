## ⚡ ESP32 Flashing (Windows)

### 1️⃣ Requirements

* ESP32 connected via USB
* Python 3.x installed
* `esptool.py` installed:

```bash
pip install esptool
```

---

### 2️⃣ Flashing via `flash.bat`

Use the `flash.bat` file located in the same folder as your binaries (`furtif.ino.bootloader.bin`, `furtif.ino.partitions.bin`, `furtif.ino.bin`, `littlefs.bin`).

#### ✅ Instructions

1. Connect the ESP32 to your PC via USB.
2. Update `COM_PORT` in the `flash.bat` file if needed (check Device Manager).
3. Double-click `flash.bat` → bootloader, partitions, and firmware will be flashed automatically.
4. The ESP32 is ready to use after reconnecting.

---
