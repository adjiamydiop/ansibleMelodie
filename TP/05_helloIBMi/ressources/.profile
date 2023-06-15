
# detect if we're in a PASE shell
/QSYS.LIB/QSHELL.LIB/UNAME.PGM > /dev/null 2>&1

if [ $? != 0 -a "$SHELL" != "/usr/bin/bash" ]
then
  exec /usr/bin/bash
fi
