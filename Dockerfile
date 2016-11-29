FROM particle/buildpack-base:0.3.7

ARG NODE_VERSION
ENV NODE_VERSION=${NODE_VERSION} NVM_DIR="/root/.nvm"
RUN apt-get update -q && apt-get install -qy build-essential libssl-dev man-db \
  && curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh \
  && . $NVM_DIR/nvm.sh && nvm install ${NODE_VERSION} \
  && ln -s /root/.nvm/current/bin/node /usr/local/bin \
  && ln -s /root/.nvm/current/bin/npm /usr/local/bin \
  && apt-get remove build-essential -qy && apt-get clean && apt-get purge \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
