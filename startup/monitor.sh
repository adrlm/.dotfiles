!#/bin/sh
/usr/bin/xrandr --current | grep "HDMI1 connected "
if [ $? -eq 0 ]; then
echo "HDMI found"
sleep 1s 
/usr/bin/xrandr --output LVDS1 --off
/usr/bin/xrandr --output HDMI1 --auto --primary
fi
