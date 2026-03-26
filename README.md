# Lumon Plymouth Theme

A visually appealing Plymouth splash screen theme inspired by the Lumon Industries aesthetic from *Severance*. It features a 167-frame animation that plays during the boot and shutdown process.

## Features

- 167-frame animation sequence.
- Centered layout compatible with various screen resolutions.
- Simple installation script included.

## Installation

To install and set the Lumon theme as your default Plymouth splash:

1.  **Navigate to the theme directory:**
    ```bash
    cd contents/splash-sequence
    ```

2.  **Run the installation script with sudo:**
    ```bash
    sudo ./install.sh
    ```

The script will:
- Copy the theme files to `/usr/share/plymouth/themes/lumon/`.
- Register the theme with Plymouth.
- Update your `initramfs` (using `plymouth-set-default-theme -R`).

## Manual Installation

If the script doesn't work for your distribution, follow these manual steps:

1.  Create the theme directory:
    ```bash
    sudo mkdir -p /usr/share/plymouth/themes/lumon
    ```

2.  Copy all files to that directory:
    ```bash
    sudo cp ./*.png ./*.plymouth ./*.script /usr/share/plymouth/themes/lumon/
    ```

3.  Apply the theme (Debian/Ubuntu/Fedora):
    ```bash
    sudo plymouth-set-default-theme -R lumon
    ```

    *On some distributions like Arch Linux, you might need to manually update your `initramfs`:*
    ```bash
    sudo mkinitcpio -p linux
    ```

## Requirements

- **Plymouth:** Ensure Plymouth is installed and configured on your system.
- **Root Privileges:** Required to write to `/usr/share/plymouth/`.

## Preview

The theme features the Lumon logo animation sequence.

---
*Created with care for the Lumon Industries family.*
