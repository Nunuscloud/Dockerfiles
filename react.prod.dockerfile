# 베이스 이미지 설정
FROM node:14.16.1-alpine3.13 AS build

# 앱 디렉토리 생성 및 설정
WORKDIR /app

# 의존성 설치
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# 소스 코드 복사
COPY . .

# 프로덕션용으로 빌드
RUN yarn build

# 베이스 이미지 설정
FROM nginx:1.21.1-alpine

# Nginx 설정 복사
COPY --from=build /app/build /usr/share/nginx/html

# Nginx 실행 및 포트 설정
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
