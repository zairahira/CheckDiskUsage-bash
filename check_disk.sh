#!/bin/bash


Smount_point=`df -h | grep /opt |awk '{print substr ($5,0,2)}'`

body="
Disk_Usage opt           $Sopt %

Regards,
Ops Team
(This email is auto-generated)
"

echo "$body"

if [ $Smount_point -gt 70 ] ;then
echo "$body" | mail -s "Space Alert" -r recipient@email.com -F sender@email.com
fi

