#Check to see if home assistant is running
hassioStatus=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8123)
if [ $hassioStatus -ne 200 ]; then
    {
        sed -i 's#{{ secrets.AMCRESTPASSWORD }}#password #g' homeassistant/config/secrets.yaml
        docker-compose up -d
    }
else
echo "we're good"
fi