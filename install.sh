#!/bin/bash

# Update the system CLOCK
timedatectl set-ntp true

# Partition the disks
parted --script /dev/sda mklabel msdos mkpart primary ext4 1MiB 60GiB mkpart primary linux-swap 60GiB 62GiB

# Format the partitions 
mkfs.ext4 /dev/sda1
mkswap /dev/sda2

# Mount the file systems
mount /dev/sda1 /mnt
swapon /dev/sda2

# Install essential package
pacstrap /mnt base linux linux-firmware vim

# Fstab

# Time zone

# Localizatiion

# Network configuration

# Root password


# Boot loader
