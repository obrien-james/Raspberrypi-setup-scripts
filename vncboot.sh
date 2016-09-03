#! /bin/sh
USER=$2
HOME=/home/$USER

export USER HOME

case "$1" in
start)
echo "Starting VNC Server"
#Insert your favoured settings for a VNC session
su - $USER -c "/usr/bin/vncserver :0 -geometry 1280x800 -depth 16 -pixelformat $
;;

stop)
echo "Stopping VNC Server"
/usr/bin/vncserver -kill :0
;;

restart)
echo "Restarting VNC Server"
/usr/bin/vncserver -kill :0
su - $USER -c "/usr/bin/vncserver :0 -geometry 1280x800 -depth 16 -pixelformat $
;;

*)
echo "Usage: ./vncboot {start|stop} Username"
exit 1
;;
esac