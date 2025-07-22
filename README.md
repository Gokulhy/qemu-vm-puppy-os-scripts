# QEMU Simple Runner 🚀

A straightforward repository with shell scripts to simplify the process of installing and running a QEMU virtual machine.

---

## Prerequisites

Before you begin, ensure you have **QEMU** installed on your system.

**For Debian/Ubuntu-based systems:**
```bash
sudo apt update && sudo apt install qemu-system-x86
```

**For Arch Linux-based systems:**
```bash
sudo pacman -S qemu-system-x86
```

---

## Usage

The process is divided into two steps: initial OS installation and subsequent runs.

### Step 1: OS Installation 💿

The `run.sh` script is used **only once** to install an operating system from an ISO file onto the virtual hard disk.

1.  Make the script executable:
    ```bash
    chmod +x run.sh
    ```
2.  Execute the script to begin the installation:
    ```bash
    ./run.sh
    ```
3.  Proceed with the on-screen instructions of your chosen operating system to complete the installation.

---

### Step 2: Running the VM 💻

After the OS has been successfully installed, use `run2.sh` for all future boots. This script boots the VM directly from the virtual hard disk, not the installation media.

1.  Make the script executable:
    ```bash
    chmod +x run2.sh
    ```
2.  Run the script to launch your installed virtual machine:
    ```bash
    ./run2.sh
    ```

---

## Customization ⚙️

You can easily modify the virtual machine's specifications by editing the shell scripts. Look for and change the following flags to suit your needs:

* `-m`: Sets the amount of RAM (e.g., `-m 2G` for 2 Gigabytes).
* `-smp`: Sets the number of CPU cores (e.g., `-smp 4` for 4 cores).
* `-hda`: Specifies the virtual hard disk file (e.g., `-hda my-vm-disk.qcow2`).
* `-cdrom`: (In `run.sh`) Specifies the path to the OS installation `.iso` file.

---
