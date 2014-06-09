notify-send "starting pings.."
while true
do
ping -c 1 google.com > /dev/null 2>&1
if [ $? -ne 0 ]
then
	notify-send "Ping failed at $(date)"
	paplay /usr/share/sounds/ubuntu/stereo/phone-outgoing-busy.ogg 
	sleep 10
else
	sleep 3
fi
done
