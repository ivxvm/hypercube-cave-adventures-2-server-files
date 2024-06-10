FROM --platform=amd64 openjdk:17-oracle

WORKDIR /minecraft

COPY serverpack ./

ENTRYPOINT java -Xmx12G -jar ./kettinglauncher-1.3.8.jar -noui -accepteula -daus -daul -minecraftVersion 1.20.1 -forgeVersion 47.2.20 nogui
