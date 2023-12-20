#!/bin/bash

sudo make -j$(nproc) SUBDIR=drivers/gpu/drm/amd/amdgpu modules

sudo dmesg -C 
sudo rmmod amdgpu
sudo insmod amdgpu_link/amdgpu.ko
