mkdir ~/pipeline
cd ~/pipeline
curl --output life.jpg https://raw.githubusercontent.com/vigeeking/homeAutomation/master/Life.jpg
docker build -t life.jpg .
docker run --name pipeline -d -p 8080:80 life.jpg