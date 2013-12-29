#!/bin/bash
#

cd /mnt/tmp

BUILD=`grep "os_linux_build" ./etc/calculate/calculate.env | cut -f3 -d " "`
BACK="/var/calculate/backup"

tar uvf $BACK/cldx-${BUILD}.tar ./etc --exclude ./etc/splash
tar uvf $BACK/cldx-${BUILD}.tar ./var/lib/portage/world
tar uvf $BACK/cldx-${BUILD}.tar /var/calculate/templates
tar uvf $BACK/cldx-${BUILD}.tar ./usr/src/linux/.confi*
tar uvf $BACK/cldx-${BUILD}.tar ./root/.bash_history
tar uvf $BACK/cldx-${BUILD}.tar ./root/.ssh
tar uvf $BACK/cldx-${BUILD}.tar ./root/.config/mc

gdisk -l /dev/sda >> /tmp/${BUILD}_part.lst
echo ""   >> /tmp/${BUILD}_part.lst
df -h     >> /tmp/${BUILD}_part.lst
echo ""   >> /tmp/${BUILD}_part.lst
echo "       swap partitions list:        " >> /tmp/${BUILD}_part.lst
echo ""   >> /tmp/${BUILD}_part.lst
swapon -s >> /tmp/${BUILD}_part.lst

cd /tmp
tar uvf $BACK/cldx-${BUILD}.tar ${BUILD}_part.lst --remove-files
