docker volume create vault-volume
docker run -v vault-volume:/data --name helper busybox true
docker cp ./vault-volume helper:/data
docker rm helper
docker-compose up --build -d
