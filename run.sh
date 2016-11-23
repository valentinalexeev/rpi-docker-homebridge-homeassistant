# DBUS workaround
rm -r /var/run && rm -r /var/lock && ln -s /run /var/run && ln -s /run/lock /var/lock && rm /run/dbus/*

/etc/init.d/dbus restart 
avahi-daemon --no-drop-root -D

homebridge
