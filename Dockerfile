FROM eclipse-temurin:21-jdk-jammy

WORKDIR /server

# tải PaperMC
ADD https://api.papermc.io/v2/projects/paper/versions/1.21/builds/130/downloads/paper-1.21-130.jar server.jar

# tải playit
RUN apt update && apt install -y wget
RUN wget https://github.com/playit-cloud/playit-agent/releases/latest/download/playit-linux-amd64 -O playit
RUN chmod +x playit

# copy file
COPY start.sh .
COPY eula.txt .

RUN chmod +x start.sh

EXPOSE 25565

CMD ["./start.sh"]
