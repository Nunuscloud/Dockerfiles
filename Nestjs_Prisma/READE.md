# Dockerfile
docker build -t nest-prisma-docker . 
docker run -dp 3000:3000 nest-prisma-docker

# Docker-compose
docker-compose up --build

알아서 사용에 맞게 커스터마이징 하세요.
