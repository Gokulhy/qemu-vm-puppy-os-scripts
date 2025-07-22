
# Path to the disk image for installation
DISK_PATH="/home/bread/Me/OS/puppy-os/puppyos.qcow2"

# Create disk image if it doesn't exist
if [ ! -f "$DISK_PATH" ]; then
  qemu-img create -f qcow2 "$DISK_PATH" 10g
fi

# Launch QEMU VM to boot Alpine ISO for setup
qemu-system-x86_64 \
    -enable-kvm \
    -m 2048M \
    -hda $DISK_PATH \
    -boot c \
    -device virtio-vga-gl \
    -display gtk,gl=on \
    -usb \
    -device usb-tablet
echo "VM has been shut down."

