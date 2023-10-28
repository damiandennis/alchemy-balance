FROM docker/dev-environments-javascript:stable-1
RUN mkdir /com.docker.devenvironments.code && chown node:node /com.docker.devenvironments.code
SHELL ["/bin/bash", "-c"]
RUN source /usr/local/share/nvm/nvm.sh && nvm install lts/iron && nvm alias default lts/iron
USER node
