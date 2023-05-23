# 基础镜像：FROM命令： 基础镜像名：tag，例如：java：8
FROM openjdk:8
# 下面RUN执行时的目录
WORKDIR /app
# 镜像的操作指令
# 拷贝一个文件到容器，格式：<src> <dest>
ADD target/spring-boot-docker-image-demo-1.0.jar /app/app.jar

# 告诉docker容器暴露端口，在容器启动的时需要通过 -p做端口映射
EXPOSE 8082

# 配置容器启动后，执行的命令
ENTRYPOINT ["java","-jar","/app/app.jar"]