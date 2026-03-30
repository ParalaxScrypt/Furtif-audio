---

<p align="center">
<img src="furtif-audio-logo.svg" width="80%">
</p>

# Furtif-Audio v1.2

ESP32-based compact spy microphone with real-time audio streaming

This project delivers a **ready-to-flash ESP32 firmware** with a fully responsive web interface for audio streaming. No Arduino IDE or code compilation is needed — only the provided binaries.

---

## 🛠 Hardware Requirements

| Component      | Description                                                     |
| -------------- | --------------------------------------------------------------- |
| **ESP32**      | ESP32 WROOM-32 module                                           |
| **Microphone** | I2S MEMS microphone ICS43434                                    |
| **Power**      | 5V USB power or LiPo battery                                    |
| **Optional**   | Small enclosure for compact installation, wires, and connectors |


## 📦 Included Files

* `furtif.ino.bin` → Main firmware for ESP32
* `littlefs.bin` → LittleFS image containing all web interface files (HTML, CSS, JS, images)

> Both files are required for the ESP32 to function properly.

---

## ⚡ Flashing Instructions (Windows Example)

### 1️⃣ Prerequisites

* ESP32 connected via USB
* Python 3.x installed
* `esptool.py` installed:

```bash
pip install esptool
```

### 2️⃣ Flashing the ESP32

1. Download the two binary files from GitHub: `furtif.ino.bin` and `littlefs.bin`
2. Find the COM port of your ESP32 (e.g., COM3)
3. Create a file `flash_esp32.bat` with the following content:

```bat
@echo off
set COM_PORT=COM3
set BAUD=460800

echo Flashing firmware...
esptool.py --chip esp32 --port %COM_PORT% --baud %BAUD% write_flash -z 0x1000 furtif.ino.bin

echo Flashing LittleFS...
esptool.py --chip esp32 --port %COM_PORT% --baud %BAUD% write_flash -z 0x110000 littlefs.bin

echo Flash complete! Unplug and replug your ESP32.
pause
```

4. Double-click `flash_esp32.bat` → your ESP32 will be flashed with firmware and web interface.

> The addresses `0x1000` (firmware) and `0x110000` (LittleFS) are pre-configured for this project.

---

## 🌐 Initial Setup / Wi-Fi Configuration

1. Power on the ESP32.
2. Connect to the Wi-Fi network **FURTIF-AUDIO-Setup** (password: `12345678`).
3. Open a browser and go to `http://192.168.8.8/`.
4. Enter your Wi-Fi SSID and password, then click **Save**.
5. The ESP32 will restart and connect to your Wi-Fi network.

---

## 📡 Streaming Audio

1. Find the ESP32 IP address on your network.
2. Open a browser and navigate to the ESP32 IP.
3. Copy the audio stream URL.
4. Open VLC or another media player supporting network streams.
5. Paste the URL and enjoy real-time audio streaming.

---

## 🔧 Optional

* Reset the device and Wi-Fi configuration directly from the web interface using the **Reset** button.

---

## 💡 Tips

* Ensure your firewall/router allows devices to communicate on the local network.
* Use a stable Wi-Fi network for best performance.
* If the ESP32 cannot connect to a saved Wi-Fi network at startup, it automatically switches back to AP mode for reconfiguration.

---

