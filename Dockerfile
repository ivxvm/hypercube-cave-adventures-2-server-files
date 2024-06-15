FROM --platform=amd64 openjdk:17-oracle

WORKDIR /minecraft

COPY serverpack-forge ./

RUN java -jar ./forge-1.20.1-47.2.20-installer.jar --installServer

ENTRYPOINT ["sh", "./run.sh"]

# ketting
# COPY serverpack-ketting ./
# ENTRYPOINT java -Xmx12G -jar ./kettinglauncher-1.3.8.jar -noui -accepteula -daus -daul -minecraftVersion 1.20.1 -forgeVersion 47.2.20 nogui
