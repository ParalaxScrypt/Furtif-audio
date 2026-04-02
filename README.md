<p align="center">
<img src="furtif-audio-logo.svg" width="80%">
</p>

---

<p align="center">
<img src="preview-interface.png" max-width="1000px">
</p>

# Furtif-Audio v1.2

Compact remote listening microphone based on ESP32 with real-time audio streaming over Wi-Fi.

This device allows you to stream audio discreetly to a web browser or VLC, while providing an intuitive web interface for easy management. It includes microphone sensitivity adjustment, an intelligent firmware update system, and an integrated reset control.

---

## 🛠️ Required Hardware

| Component    | Description                          |
| ------------ | ------------------------------------ |
| ESP32        | ESP32 WROOM-32 module                |
| Microphone   | I2S MEMS ICS43434                    |
| Power Supply | 5V USB or LiPo battery               |
| Optional     | Compact enclosure, wires, connectors |

---

## 🔌 ESP32 WROOM-32 ↔ ICS43434 Connections

| Module Pin | I2S Signal | ESP32 WROOM-32 |
| ---------- | ---------- | -------------- |
| **3V**     | VDD        | 3.3V           |
| **GND**    | GND        | GND            |
| **BCLK**   | BCLK       | GPIO 32        |
| **DOUT**   | DATA       | GPIO 33        |
| **LRCL**   | WS         | GPIO 25        |
| **SEL**    | L/R        | GND (left)     |

---

## 📂 Included Files /bin

* `flash.bat` → Windows batch script to flash all binaries to the ESP32 in one step
* `furtif.ino.bootloader.bin` → ESP32 bootloader  
* `furtif.ino.partitions.bin` → Partition table  
* `furtif.ino.bin` → Main ESP32 firmware  
* `littlefs.bin` → LittleFS content (web files and dashboard)

---

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

Use the `flash.bat` file located in the same folder as your binaries (`furtif.ino.bootloader.bin`, `furtif.ino.partitions.bin`, `furtif.ino.bin`).

#### ✅ Instructions

1. Connect the ESP32 to your PC via USB.
2. Update `COM_PORT` in the `flash.bat` file if needed (check Device Manager).
3. Double-click `flash.bat` → bootloader, partitions, and firmware will be flashed automatically.
4. The ESP32 is ready to use after reconnecting.

---

## ⚙️ Initial Wi-Fi Setup

1. Power on the ESP32.
2. Connect to the Wi-Fi network `FURTIF-AUDIO-Setup`.
3. Open a browser → `http://192.168.8.8/`
4. Enter your Wi-Fi SSID and password → click **Save**
5. The ESP32 reboots and connects to your network

---

## 🎧 Audio Streaming

1. Get the ESP32 IP address on your network.  
2. Open a browser and navigate to this IP.  
3. Log in to the dashboard (username: admin, password: 1234).  
4. Copy the audio stream URL.  
5. Open VLC → Media → Open Network Stream.  
6. Paste the URL → listen in real time.  

---

## ⚠️ Disclaimer

This remote listening device project is provided for educational and technical purposes only.
It must not be used for illegal activities or to violate the privacy of others.

The user is solely responsible for how this project is used. Please ensure compliance with the laws and regulations in your country before any use.
