Test

`CD` to correct directory

`docker build -t custom/img:bind9resolver ./`

`docker image ls` > get imageID

`docker run -d imageID` > -d run in background

`docker exec -u 0 -it mycontainer bash` > run docker in root





`docker run -d --name bind9 -p 53:53 -p 53:53/udp -v /absolute/path/named.conf:/etc/bind/named.conf -v /absolute/path/exemple.com.db:/etc/bind/exemple.com.db resystit/bind9:latest` = recommended command by publisher. Works fine with what is in the dockerfile
