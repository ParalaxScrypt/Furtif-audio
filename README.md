<p align="center">
<img src="furtif-audio-logo.svg" width="60%">
</p>

---

<p align="center">
<img src="preview-interface.png" max-width="1000px" width="80%">
</p>

# Furtif-Audio v1.2
<span data-fr="Microphone d’écoute à distance compact à base d’ESP32 avec streaming audio en temps réel via Wi‑Fi.
Ce dispositif permet de diffuser le son discrètement vers un navigateur web ou VLC, tout en offrant une interface web intuitive pour une gestion facile. Il intègre des réglages de sensibilité du microphone, un système intelligent de mise à jour du firmware, ainsi qu’un contrôle intégré du reset.">
Compact remote listening microphone based on ESP32 with real-time audio streaming over Wi-Fi.

This device allows you to stream audio discreetly to a web browser or VLC, while providing an intuitive web interface for easy management. It includes microphone sensitivity adjustment, an intelligent firmware update system, and an integrated reset control.
</span>
---

## 🛠️ Required Hardware

| Component    | Description                          |
| ------------ | ------------------------------------ |
| ESP32        | ESP32 WROOM-32 module                |
| Microphone   | I2S MEMS ICS43434                    |
| Power Supply | 5V USB or LiPo battery               |
| Optional     | Compact enclosure, wires, connectors |

<p align="center">
<img src="preview-hardware.png" max-width="1000px"  width="80%">
</p>

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

Use the `flash.bat` file located in the same folder as your binaries (`furtif.ino.bootloader.bin`, `furtif.ino.partitions.bin`, `furtif.ino.bin`, `littlefs.bin`).

#### ✅ Instructions

1. Connect the ESP32 to your PC via USB.
2. Update `COM_PORT` in the `flash.bat` file if needed (check Device Manager).
3. Double-click `flash.bat` → bootloader, partitions, and firmware will be flashed automatically.
4. The ESP32 is ready to use after reconnecting.

---

## ⚙️ Initial Wi-Fi Setup

1. Power on the ESP32.
2. Connect to the Wi-Fi network `FURTIF-AUDIO-Setup` using the password `12345678`.
3. Open a browser → `http://192.168.8.8/`
4. Enter your Wi-Fi SSID and password → click **Save**
5. The ESP32 reboots and connects to your network

---

## 🎧 Audio Streaming

1. Get the ESP32 IP address on your network.  
2. Open a browser and navigate to this IP.
  > *(You can use mobile apps such as Fing, IP Tools, Network Scanner, or Network Analyzer… locate the device ESP_xxxxxx or ESP32-xxxxxx and copy its IP address)*
3. Log in to your dashboard using your credentials.
> ⚠️ To get your own credentials and access the microphone as well as all features, contact me at: paralax@fluctual.fr 
4. Copy the audio stream URL.  
5. Open VLC → Media → Open Network Stream.  
6. Paste the URL → listen in real time.  

---

## ⚠️ Disclaimer

This remote listening device project is provided for educational and technical purposes only.
It must not be used for illegal activities or to violate the privacy of others.

The user is solely responsible for how this project is used. Please ensure compliance with the laws and regulations in your country before any use.
