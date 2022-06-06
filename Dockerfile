FROM docker.artifactory.globoi.com/sales/node-red-base-image@sha256:971ffb3d01ff34fb00ce1c10e354c0428a634627cc0d30e4179478f93ab0092c


#
USER root
##
WORKDIR /home/node/.node-red/

# Copia persistent
COPY upload/package.json /home/node/.node-red/package.json

RUN curl -v https://registry.npmjs.org/node-red-contrib-oracledb-mod | jq
RUN cat /home/node/.node-red/package.json

WORKDIR /app






