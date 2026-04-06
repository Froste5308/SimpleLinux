<h1 align=center>How To Root Your Android Phone!</h1>

<h2 align=center>Prerequisites</h2>

- Enable OEM Unlocking On Your Android Device (Some Devices Do Not Support This Feature)
  - Go To Settings --> About Phone --> Software Information --> Click The Build Number Many Times Until It Asks For Your Pin Or Says You're A Developer
  - Go Back To The Main Settings Page --> System --> Developer Options
  - Toggle **OEM Unlocking**, THIS WILL ERASE ALL OF YOUR DATA LATER ON!!!
- Get A Computer With Platform Tools Installed (ADB & Fastboot)
  - Windows
    - Click [This](https://dl.google.com/android/repository/platform-tools-latest-windows.zip) To Download Platform Tools
      - Unzip It
      - When You Have A Terminal In The Directory Of Platform Tools, You Can Run ADB & Fastboot Commands
  - Linux
    - Download ADB & Fastboot Via Your Distribution's Package Manager
      - Pacman
        - `sudo pacman -S android-tools`
      - Debian
        - `sudo apt install adb fastboot`
      - Fedora
        - `sudo dnf install android-tools`
    - If Your Distro Does Not Use One Of These Package Managers, Either Try Typing `adb`, `fastboot`, or `android-tools` Into Your Package Manager's Installation Command, or Follow This Guide
      - Click [This](https://dl.google.com/android/repository/platform-tools-latest-linux.zip)
        - Unzip It
        - 
