# 🖥️ Raspberry Pi Kiosk Setup

## 📌 Introduction
This project provides a setup for configuring a Raspberry Pi as a kiosk using Chromium. The installation script automates the installation of necessary packages, the removal of unnecessary applications, and the configuration of auto-login with X and Openbox.

## 🔧 Installation
The complete installation is managed by a single script available in the GitHub repository.

1. **📥 Clone the repository and run the installation script**
   ```bash
   git clone https://github.com/painteau/kiosk
   cd kiosk
   chmod +x install.sh
   ./install.sh
   ```

2. **⚙️ Configure auto-login**
   - Run the following command:
     ```bash
     sudo raspi-config
     ```
   - Navigate to:
     - `1 System Options`
     - `S5 Boot / Auto Login`
     - `B2 Console Autologin`
   
3. **🔄 Reboot the system**
   ```bash
   sudo reboot
   ```

## 📖 Documentation
All installation and configuration details are available in the script:
[install.sh](https://github.com/painteau/kiosk/blob/main/install.sh)

## 📂 Repository
For more information and updates, visit the GitHub repository:
[GitHub Repository](https://github.com/painteau/kiosk)

## 🚀 Enjoy your Raspberry Pi Kiosk!

