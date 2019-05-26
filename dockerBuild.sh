
# Create and edit Dockerfile
cd docker
docker build -t nginx_rtmp_web_server .

# docker ps -a # last column to get the name.
docker container stop nginx-rtmp
docker rm nginx-rtmp
docker run -d -p 1935:1935 -p 8142:8142 --name nginx-rtmp nginx_rtmp_web_server

# See if ports are ok. docker ps -a to see the port binding between docker and localhost
docker ps

# See logs
docker logs nginx-rtmp
docker container exec nginx-rtmp nginx -t
docker container exec nginx-rtmp nginx -s reload

# Execute a custom command
docker container exec nginx-rtmp ls /etc/nginx/html/
