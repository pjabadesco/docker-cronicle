FROM node:18
ENV CRONICLE_VERSION=0.9.20
ENV CRONICLE_foreground=1
ENV CRONICLE_echo=1
ENV CRONICLE_color=1
ENV debug_level=1
ENV HOSTNAME=cronicle
WORKDIR /opt/cronicle
RUN curl -L https://github.com/jhuckaby/Cronicle/archive/refs/tags/v${CRONICLE_VERSION}.tar.gz | tar zxvf - --strip-components 1
RUN yarn
RUN node bin/build.js dist
RUN bin/control.sh setup
# COPY config.json /opt/cronicle/conf/config.json
# RUN node bin/build.js dist && bin/control.sh setup
CMD ["sh", "bin/control.sh", "start"]
# RUN node bin/build.js dist && bin/control.sh setup
# CMD ["node", "bin/docker-entrypoint.js"]
# ENTRYPOINT ["/entrypoint"]
