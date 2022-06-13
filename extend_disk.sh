#!/bin/bash
vgs
lvs
vgextend /dev/ubuntu-vg
lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
resize2fs /dev/ubuntu-vg/ubuntu-lv
