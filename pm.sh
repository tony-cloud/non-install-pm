#!/system/bin/sh
# Script to start "pm" on the device, which has a very rudimentary
# shell.
cmdstr=$@
c="install-create"
d="install-commit"
e="install-write"
f="install-abandon"
a="install"
b=$(echo $cmdstr |awk '{print $1 }')
if [ "$a" = "$b" ]||[ "$c" = "$b" ]||[ "$d" = "$b" ]||[ "$e" = "$b" ]||[ "$f" = "$b" ]
then
echo "error: operation not allowed."
exit -1
else
 /system/bin/pm_bak "$cmdstr"
fi
exit 0
