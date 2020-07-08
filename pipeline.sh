mkdir ~/pipeline
cd ~/pipeline
curl --output life.jpg https://raw.githubusercontent.com/vigeeking/homeAutomation/master/Life.jpg
docker build -t life.jpg .
docker run --name pipeline -d -p 8080:80 Life.jpg --mount 'type=volume,dst=/usr/share/nginx/html,volume-driver=local,ro'


docker service create \
    --mount 'type=volume,src=/media/odin/Workspace/homeAutomation,dst=/usr/share/nginx/html,volume-driver=local,ro'
    --name myservice \
    <IMAGE>

    docker run -d --name=pipeline --mount source=homeAutomation,destination=/usr/share/nginx/html,readonly -p 8080:80 nginx:latest
should be merged with: 
 -p 8080:80 some-content-nginx


Instead of the above I am trying this: 
docker service create \
    --mount 'type=volume,src=<VOLUME-NAME>,dst=<CONTAINER-PATH>,volume-driver=local,volume-opt=type=nfs,volume-opt=device=<nfs-server>:<nfs-path>,"volume-opt=o=addr=<nfs-address>,vers=4,soft,timeo=180,bg,tcp,rw"'
    --name myservice \
    <IMAGE>

    <VOLUME-NAME> is the NAME of the volume you are sharing, where is the path set?
    