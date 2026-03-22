FROM eclipse-temurin:21-jdk-jammy

WORKDIR /server

# tải PaperMC mới nhất ổn định
ADD https://api.papermc.io/v2/projects/paper/versions/1.21/builds/130/downloads/paper-1.21-130.jar server.jar

COPY . .

RUN chmod +x start.sh

EXPOSE 25565

CMD ["./start.sh"]
