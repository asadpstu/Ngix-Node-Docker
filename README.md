sudo docker images
sudo docker build -t app-name .
sudo docker run -d -p 8000:3000 app-name //detach mode
sudo docker run -it -p 8000:3000 app-name
sudo docker ps

#docker compose
sudo docker-compose build --force-rm --no-cache --pull
sudo docker-compose up

#To see all process with id
ps -aux |grep 6379
