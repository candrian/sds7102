#! /bin/sh
set -x

/sbin/rmmod fpga
/sbin/rmmod gpios
/sbin/rmmod regs
/sbin/rmmod frontpanel
/sbin/rmmod scope
/sbin/insmod fpga.ko
/sbin/insmod gpios.ko
/sbin/insmod regs.ko
/sbin/insmod scope.ko

echo "Loading FPGA"
cat sds7102.bin >/dev/fpga
