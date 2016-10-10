#!/bin/sh

#      Copyright (C) 2008-2013 Team XBMC
#      http://xbmc.org
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with XBMC; see the file COPYING.  If not, write to
#  the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
#  http://www.gnu.org/copyleft/gpl.html

APP=Kodi
bin_name=kodi
SAVED_ARGS="$@"
prefix="/home/pivos/xbmc-depends/arm-linux-androideabi-android-17"
exec_prefix="/home/pivos/xbmc-depends/arm-linux-androideabi-android-17"
datarootdir="${prefix}/share"
LIBDIR="${exec_prefix}/lib"
CRASHLOG_DIR=${CRASHLOG_DIR:-$HOME}
USERDATA_DIR="${HOME}/.${bin_name}"


# Check for some options used by this script
while [ "$#" -gt "0" ]
do
    case "$1" in
        --setlibdir)
            LIBDIR="$2"
            shift; shift
            ;;
        *)
            shift
            ;;
    esac
done

migrate_home()
{
  [ "$(basename $0)" = "xbmc" ] && echo "WARNING: Running ${bin_name} as "xbmc" is deprecated and will be removed in later versions, please switch to using the ${bin_name} binary"

  #check if data migration is needed
  if [ -d "${HOME}/.xbmc" ] && [ ! -d "${USERDATA_DIR}" ]; then
      echo "INFO: migrating userdata folder. Renaming ${HOME}/.xbmc to $USERDATA_DIR"
      mv ${HOME}/.xbmc $USERDATA_DIR
      touch ${USERDATA_DIR}/.kodi_data_was_migrated
  fi
}

command_exists()
{
  command -pv $1 >/dev/null 2>&1
}

single_stacktrace()
{
  # core filename is either "core.$PID" or "core"
  find "$1" -maxdepth $2 -name 'core*' | while read core; do
      LC_ALL=C gdb --core="$core" --batch 2> /dev/null | grep -q "^Core was generated by \`$LIBDIR/${bin_name}/${bin_name}.bin" || continue
      echo "=====>  Core file: "$core" ($(stat -c%y "$core"))" >> $FILE
      echo "        =========================================" >> $FILE
      gdb "$LIBDIR/${bin_name}/${bin_name}.bin" --core="$core" --batch -ex "thread apply all bt" 2> /dev/null >> $FILE
      rm -f "$core"
  done
}

print_crash_report()
{
  FILE="$CRASHLOG_DIR/${bin_name}_crashlog-`date +%Y%m%d_%H%M%S`.log"
  echo "############## $APP CRASH LOG ###############" >> $FILE
  echo >> $FILE
  echo "################ SYSTEM INFO ################" >> $FILE
  printf " Date: " >> $FILE
  date >> $FILE
  echo " $APP Options: $*" >> $FILE
  printf " Arch: " >> $FILE
  uname -m >> $FILE
  printf " Kernel: " >> $FILE
  uname -rvs >> $FILE
  printf " Release: " >> $FILE
  if [ -f /etc/os-release ]; then
	  . /etc/os-release
	  echo $NAME $VERSION >> $FILE
  elif command_exists lsb_release; then
    echo >> $FILE
    lsb_release -a 2> /dev/null | sed -e 's/^/    /' >> $FILE
  else
    echo "lsb_release not available" >> $FILE
  fi
  echo "############## END SYSTEM INFO ##############" >> $FILE
  echo >> $FILE
  echo "############### STACK TRACE #################" >> $FILE
  if command_exists gdb; then
    if command_exists systemd-coredumpctl; then
      systemd-coredumpctl dump -o core ${bin_name}.bin > /dev/null 2>&1
    elif command_exists coredumpctl; then
      coredumpctl dump -o core ${bin_name}.bin > /dev/null 2>&1
    fi
    single_stacktrace "$PWD" 1
    # Find in plugins directories
    if [ $KODI_HOME ]; then
      BASEDIR=$KODI_HOME
    else
      BASEDIR="$LIBDIR/${bin_name}/"
    fi
    single_stacktrace "$BASEDIR" 5
    # find in userdata dir
    single_stacktrace "$HOME" 5
    # try /proc/sys/kernel/core_pattern
    [ -d $(dirname $(cat /proc/sys/kernel/core_pattern)) ] && single_stacktrace $(dirname $(cat /proc/sys/kernel/core_pattern)) 1
  else
    echo "gdb not installed, can't get stack trace." >> $FILE
  fi
  echo "############# END STACK TRACE ###############" >> $FILE
  echo >> $FILE
  echo "################# LOG FILE ##################" >> $FILE
  echo >> $FILE
  if [ -f $USERDATA_DIR/temp/kodi.log ]
  then
    cat $USERDATA_DIR/temp/kodi.log >> $FILE
    echo >> $FILE
  else
    echo "Logfile not found in the usual place." >> $FILE
    echo "Please attach it separately." >> $FILE
    echo "Use pastebin.com or similar for forums or IRC." >> $FILE
  fi
  echo >> $FILE
  echo "############### END LOG FILE ################" >> $FILE
  echo >> $FILE
  echo "############ END $APP CRASH LOG #############" >> $FILE
  echo "Crash report available at $FILE"
}

migrate_home

if command_exists gdb; then
  # Output warning in case ulimit is unsupported by shell
  eval ulimit -c unlimited
  if [ ! $? = "0" ]; then
    echo "${bin_name}: ulimit is unsupported by this shell" 1>&2
  fi
fi

LOOP=1
while [ $(( $LOOP )) = "1" ]
do
  LOOP=0
  "$LIBDIR/${bin_name}/${bin_name}.bin" $SAVED_ARGS
  RET=$?
  if [ $(( $RET == 65 )) = "1" ]
  then # User requested to restart app
    LOOP=1
  elif [ $(( ($RET >= 131 && $RET <= 136) || $RET == 139 )) = "1" ]
  then # Crashed with core dump
    print_crash_report
  fi
done

exit $RET
