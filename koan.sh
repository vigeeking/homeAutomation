#Check to see if home assistant is running
echo -n "what is the ip address of Home Assistant?" 
read hassio
curl "$hassio:8123"
echo -n "is this being run locally?"
read local
if [ "$local"   
sed 's#{{ secrets.AMCRESTPASSWORD }}#password#g' homeassistant/secrets.yaml