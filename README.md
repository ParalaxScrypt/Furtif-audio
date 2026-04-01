

<p align="center">
<img src="furtif-audio-logo.svg" width="80%">
</p>

---

<p align="center">
<img src="preview-interface.png" max-width="1000px">
</p>

# Furtif-Audio v1.2

Microphone d’écoute à distance compact à base d’ESP32 avec streaming audio en temps réel via Wi‑Fi.

Ce dispositif permet de diffuser le son discrètement vers un navigateur web ou VLC, tout en offrant une interface web intuitive pour une gestion facile. Il intègre des réglages de sensibilité du microphone, un système intelligent de mise à jour du firmware, ainsi qu’un contrôle intégré du reset. 

---

## 🛠️ Matériel requis

| Composant    | Description                            |
| ------------ | -------------------------------------- |
| ESP32        | Module ESP32 WROOM-32                  |
| Microphone   | I2S MEMS ICS43434                      |
| Alimentation | 5V USB ou batterie LiPo                |
| Optionnel    | Boîtier compact, câbles et connecteurs |

---

## 📂 Fichiers inclus

* `furtif.ino.bootloader.bin` → Bootloader ESP32
* `furtif.ino.partitions.bin` → Table des partitions
* `furtif.ino.bin` → Firmware principal ESP32
* `/data` → Fichiers HTML, CSS, JSON pour l’interface web (à uploader via Arduino IDE avec le plugin ESP32 LittleFS Data Upload)

---

## ⚡ Flashage ESP32 (Windows)

### 1️⃣ Prérequis

* ESP32 connecté en USB
* Python 3.x installé
* `esptool.py` installé :

```bash
pip install esptool
```
---

### 2️⃣ Flashage via `flash.bat`

Utilise le fichier `flash.bat` dans le même dossier que tes binaires (`furtif.ino.bootloader.bin`, `furtif.ino.partitions.bin`, `furtif.ino.bin`).

#### ✅ Instructions

1. Connecte l’ESP32 à ton PC via USB.
2. Mets à jour `COM_PORT` du fichier `flash.bat` si nécessaire (vérifie le port dans le gestionnaire de périphériques).
3. Double-clique sur `flash.bat` → le bootloader, la table de partitions et le firmware seront flashés automatiquement.
4. L’ESP32 est prêt à être utilisé après avoir été rebranché.

---

## 💻 Upload des fichiers d’interface via Arduino IDE


1. Ouvre l’IDE Arduino et sélectionne ta carte ESP32.
2. Assure-toi d’avoir installé le plugin ESP32 LittleFS Data Upload. Avec l’IDE Arduino 2, tu peux suivre ce [tutoriel complet](https://randomnerdtutorials.com/arduino-ide-2-install-esp32-littlefs/).
3. Après avoir créé et enregistré un croquis vide, dans l’IDE Arduino, clique sur Croquis > Afficher le dossier du croquis, puis crée un dossier `/data` et copie-y les fichiers .html, .css et .json.
4. Dans l’IDE Arduino, appuie sur [Ctrl] + [Shift] + [P] sous Windows.
5. Cherche Upload LittleFS to Pico/ESP8266/ESP32 dans la liste, puis clique dessus.
6. L’ESP32 disposera alors de l’interface web complète pour le streaming.

---

## ⚙️ Configuration initiale Wi-Fi

1. Allume l’ESP32.
2. Connecte-toi au réseau Wi-Fi `FURTIF-AUDIO-Setup`.
3. Ouvre un navigateur → `http://192.168.8.8/`.
4. Saisis ton SSID et mot de passe Wi-Fi → clique sur **Save**.
5. L’ESP32 redémarre et rejoint ton réseau.

---

## 🎧 Streaming audio

1. Récupère l’adresse IP de l’ESP32 sur ton réseau.
2. Ouvre un navigateur et navigue vers cette IP.
3. Copie l’URL du flux audio.
4. Ouvre VLC ou un autre lecteur réseau compatible.
5. Colle l’URL → écoute le streaming en temps réel.

---

## ⚠️ Avertissement

Ce projet de dispositif d'écoute à distance est proposé uniquement à des fins pédagogiques et techniques.
Il ne doit en aucun cas être utilisé à des fins illégales ou pour porter atteinte à la vie privée d’autrui.

L’utilisateur est seul responsable de l’usage qu’il en fait. Veuillez vous assurer de respecter les lois et réglementations en vigueur dans votre pays avant toute utilisation.
