# gin-blog-docker

#创建镜像
docker build -t gin-blog-docker .
#启动mysql数据库
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql
#启动web容器服务 link到mysql容器
docker run --link mysql:mysql -p 8000:8000 gin-blog-docker
