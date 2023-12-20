#!/bin/bash

sudo make -j$(nproc) SUBDIR=drivers/gpu/drm/amd/amdgpu modules

if [[ $? -ne 0 ]] ; then
    exit 1
fi

sudo dmesg -C 

if [[ $? -ne 0 ]] ; then
    exit 1
fi

sudo rmmod amdgpu

if [[ $? -ne 0 ]] ; then
    exit 1
fi


sudo insmod amdgpu_link/amdgpu.ko

if [[ $? -ne 0 ]] ; then
    exit 1
fi






