#Check to see if home assistant is running
echo -n "what is the ip address of Home Assistant?" 
read hassio
curl "$hassio:8123" 