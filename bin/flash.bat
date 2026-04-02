@echo off
REM ============================================
REM  Furtif-Audio - Flash ESP32 (tous les fichiers)
REM ============================================

set COM_PORT=COM3
set BAUD=921600

REM ----------------------------
REM Flash bootloader
REM ----------------------------
echo Flashing bootloader...
python -m esptool --chip esp32 --port %COM_PORT% --baud %BAUD% write-flash 0x1000 furtif.ino.bootloader.bin

REM ----------------------------
REM Flash partitions
REM ----------------------------
echo Flashing partitions...
python -m esptool --chip esp32 --port %COM_PORT% --baud %BAUD% write-flash 0x8000 furtif.ino.partitions.bin

REM ----------------------------
REM Flash firmware
REM ----------------------------
echo Flashing firmware...
python -m esptool --chip esp32 --port %COM_PORT% --baud %BAUD% write-flash 0x10000 furtif.ino.bin

REM ----------------------------
REM Flash LittleFS
REM ----------------------------
echo Flashing LittleFS...
python -m esptool --chip esp32 --port %COM_PORT% --baud %BAUD% write-flash 0x3D0000 littlefs.bin

REM ----------------------------
REM Fin
REM ----------------------------
echo All flashing steps complete! Unplug and replug your ESP32.
