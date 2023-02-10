## OLD

docker-compose build

## NEW

docker buildx build --platform=linux/amd64 --tag=docker-cronicle:latest --load .

docker tag docker-cronicle:latest pjabadesco/docker-cronicle:2.301.1
docker push pjabadesco/docker-cronicle:2.301.1

docker tag pjabadesco/docker-cronicle:2.301.1 pjabadesco/docker-cronicle:latest
docker push pjabadesco/docker-cronicle:latest

docker tag pjabadesco/docker-cronicle:latest ghcr.io/pjabadesco/docker-cronicle:latest
docker push ghcr.io/pjabadesco/docker-cronicle:latest
