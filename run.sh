#!/bin/bash

# Path to the ISO
ISO_PATH="puppy.iso"

# Path to the disk image for installation
DISK_PATH="puppyos.qcow2"

# Create disk image if it doesn't exist
if [ ! -f "$DISK_PATH" ]; then
  qemu-img create -f qcow2 "$DISK_PATH" 10g
fi

# Launch QEMU VM 
qemu-system-x86_64 \
    -enable-kvm \
    -m 2048M \
    -hda $DISK_PATH \
    -cdrom $ISO_PATH \
    -boot d \
    -vga std

echo "VM has been shut down."
