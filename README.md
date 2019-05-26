

# Description
A Rtmp (nginx-rtmp) and HTTP server (nginx). Host your Rtmp streaming content and see the result with the embeded client (vgaplayer). All hosted on docker.  
Based on https://hub.docker.com/r/tiangolo/nginx-rtmp/.

# Run the server :
```sh
sudo sh dockerBuild.sh
```

#  Default URL :
| Description | URL |
| ------ | ------ |
| rtmp server | rtmp://localhost:1935/live/test |
| http server | http://localhost:80/ |

# How to test with OBS Studio and VLC
* Run a container with the command above  
* Open OBS Studio  
* Click the "Settings" button  
* Go to the "Stream" section  
* In "Stream Type" select "Custom Streaming Server"  
* In the "URL" enter the rtmp://<ip_of_host>/live replacing <ip_of_host> with the IP of the host in which the container is running. For example: rtmp://192.168.0.30/live  
* In the "Stream key" use a "key" that will be used later in the client URL to display that specific stream. For example: test  
* Click the "OK" button  
* In the section "Sources" click de "Add" button (+) and select a source (for example "Screen Capture") and configure it as you need  
* Click the "Start Streaming" button  
* Open a VLC player (it also works in Raspberry Pi using omxplayer)  
* Click in the "Media" menu  
* Click in "Open Network Stream"  
* Enter the URL from above as rtmp://<ip_of_host>/live/<key> replacing <ip_of_host> with the IP of the host in which the container is running and <key> with the key you created in OBS Studio. For example: rtmp://192.168.0.30/live/test  
* Click "Play"  
* Now VLC should start playing whatever you are transmitting from OBS Studio  
