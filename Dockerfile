FROM mono:latest

RUN mkdir /opt/app

RUN apt-get update && apt-get install -y curl unzip

RUN curl -sLo MultiWorldServer.zip https://github.com/Shadudev/HollowKnight.MultiWorld/releases/download/itemsync-v2.4.2/MultiWorldServer.zip

RUN unzip MultiWorldServer.zip -d /opt/app

CMD ["mono", "/opt/app/MultiWorldServer.exe"]

EXPOSE 38282
